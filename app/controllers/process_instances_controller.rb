class ProcessInstancesController < InheritedResources::Base

	def new
		@process_instance = ProcessInstance.new
		@process_masters = ProcessMaster.all
	end

	def create
		# render :json => params
		# return
		@process_master = ProcessMaster.find(params[:process_master])
		@master_steps = @process_master.master_steps

		processInstance = duplicateModelObject(@process_master)
		processInstance['process_master_id'] = @process_master._id.to_s
		processInstance['initiator'] = current_user._id

		stepInstances = []
		@master_steps.each do |step|
			_step = duplicateModelObject(step)
			if _step['action_obj']
				_step['action_obj']['agents']['users'] = getUsersFromAgents(_step['action_obj']['agents']['model'], _step['action_obj']['agents']['ids'])
				
				if _step['action_obj']['manager'] 
					current_emp = current_user.employee
					if current_emp
						current_emp['managers'].each do |manager|
							_step['action_obj']['agents']['users'] << manager.user._id unless _step['action_obj']['agents']['users'].include?(manager.user._id)
						end
					end
				end

				if _step['action_obj']['initiator'] 
					_step['action_obj']['agents']['users'] << current_user._id unless _step['action_obj']['agents']['users'].include?(current_user._id)
				end
			end
			
			# stepInstances.push(_step)
			stepInstances.push(StepInstance.create!(_step))
		end

		process_instance = ProcessInstance.create!(processInstance)
		process_instance.step_instances = stepInstances

		# render :json => stepInstances
		# render :json => process_instance.step_instances
		# return
		
		process_instance.save!
		process_instance.load_process

		redirect_to root_path
	end

	def index
		@process_instances = ProcessInstance.where(initiator: current_user._id)
	end


  private

	  def duplicateModelObject(modelObj)
  		_modelObj = {}
	  	modelObj.attributes.each do |key, value|
	  		if key != '_id' && key != 'created_at' && key != 'updated_at' && key != 'process_master_id'
	  			_modelObj[key] = value
  			end
  		end
  		return _modelObj
	  end

	  def getUsersFromAgents(model, array)
  		users = []
  		if model != "Employee"
  			if !model.empty?
  				modelValues = eval(model).find(array)
	  			modelValues.each do |modelValue|
	  				modelValue.employees.each do |employee|
	  					users.push(employee.user._id)
						end
					end
  			end
			else
				array.each do |employee|
					users.push(Employee.find(employee).user._id)
				end
  		end

  		return users
  	end

  #   def process_instance_params
  #     params.require(:process_instance).permit()
  #   end
end

