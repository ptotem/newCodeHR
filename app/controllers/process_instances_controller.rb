class ProcessInstancesController < InheritedResources::Base

	def new
		@process_instance = ProcessInstance.new
		@process_masters = ProcessMaster.all
	end

	def create
		@process_master = ProcessMaster.find(params[:process_master])
		@master_steps = @process_master.master_steps

		processInstance = duplicateModelObject(@process_master)
		processInstance['process_master_id'] = @process_master._id.to_s

		stepInstances = []
		@master_steps.each do |step|
			_step = duplicateModelObject(step)
			stepInstances.push(StepInstance.create!(_step))
		end

		process_instance = ProcessInstance.create!(processInstance)
		process_instance.step_instances = stepInstances

		render :json => process_instance
		return
		
		process_instance.save!


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

  #   def process_instance_params
  #     params.require(:process_instance).permit()
  #   end
end
