class ProcessMastersController < ApplicationController

	require "json"
	def index
		@process_masters = ProcessMaster.all
	end

	def new

		@process_master = ProcessMaster.new
		SetVariablesForView()
		
	end

	def create
		process_master = ProcessMaster.create!(:name => params[:process]['name'])

		params[:masterSteps].each do |key, value|
			if value['action_obj']

				if value['action_obj']['manager'] 
					value['action_obj']['manager'] = if value['action_obj']['manager'] == 'on' then true else false end 
				end

				if value['action_obj']['initiator'] 
					value['action_obj']['initiator'] = if value['action_obj']['initiator'] == 'on' then true else false end 
				end

				if value['action_obj']['file'] 
					value['action_obj']['file'] = if value['action_obj']['file'] == 'on' then true else false end 
				end

				# idsHash = value['action_obj']['agents']['ids']
				# value['action_obj']['agents']['ids'] = hashToArray(idsHash)

			end
			stepObj = jsonToRubyHash(value)
			process_master.master_steps.push(MasterStep.create!(stepObj))
		end

		respond_to do |format|
      if process_master.save
        format.html { redirect_to process_master, notice: 'ProcessMaster was successfully created.' }
        format.json { render json: process_master, status: :created, location: process_master }
      else
        format.html { render action: "new" }
        format.json { render json: process_master.errors, status: :unprocessable_entity }
      end
    end
		
	end

	def edit
		@process_master = ProcessMaster.find(params[:id])
		SetVariablesForView()
		gon.modelData['master_steps'] = []
		@process_master.master_steps.asc(:sequence).each do |master_step|
			gon.modelData['master_steps'] << master_step
		end
		# render :json => gon.modelData['master_steps']
		# return

	end

	def update
		process_master = ProcessMaster.find(params[:id])
		master_steps = process_master.master_steps
		updatedMasterSteps = hashToArray(params[:masterSteps])


		master_steps.asc(:sequence).each do |masterStep|
			updatedMasterStep = updatedMasterSteps.select{ |item| item[:sequence] == masterStep[:sequence].to_s }[0]
			# render :json => updatedMasterStep
			# return
			if updatedMasterStep
				masterStep.update_attributes(jsonToRubyHash(updatedMasterStep))
			else
				masterStep.destroy
			end
		end

		masterStepsCount = master_steps.length.to_i
		updateMasterStepCount = params[:masterSteps].keys.length
		if updateMasterStepCount > masterStepsCount
			i = updateMasterStepCount - masterStepsCount
			seq = masterStepsCount
			while i != 0
				_step = jsonToRubyHash(updatedMasterSteps.select{ |item| item[:sequence] == seq.to_s }[0])
				process_master.master_steps.push(MasterStep.create!(_step))
				seq = seq + 1
				i = i - 1
			end
			process_master.save!
		end





		# params[:masterSteps].each do |key, masterStep|
		# 	step = master_steps.where(:sequence => masterStep[:sequence]).first
		# 	if step
		# 		_step = jsonToRubyHash(masterStep)
		# 		step.update_attributes(_step)
		# 	else
		# 		stepObj = jsonToRubyHash(masterStep)
		# 		process_master.master_steps.push(MasterStep.create!(stepObj))
		# 	end
		# 	process_master.save!
		# end

		
		# if masterStepsCount > updateMasterStepCount
		# 	while updateMasterStepCount != masterStepsCount
		# 		master_steps.where(:sequence => updateMasterStepCount).first.destroy
		# 		updateMasterStepCount = updateMasterStepCount + 1
		# 	end
		# end


		_process = jsonToRubyHash(params[:process])
		process_master.update_attributes(_process)
		# render :json => process_master.master_steps
		# return
		redirect_to process_master

	end

	def show
		@process_master = ProcessMaster.find(params[:id])
		
		respond_to do |format|
      format.html
      format.json { render json: @process_master }
    end
	end

	def destroy
		process_master = ProcessMaster.find(params[:id])
		process_master.destroy
		process_masters = ProcessMaster.new
		redirect_to process_masters
	end

  private

  	def hashToArray(hash)
  		array = []
  		if !hash.nil?
				hash.each do |key, value|
					array.push(value)
				end
			end
			return array
  	end

  	def jsonToRubyHash(obj)
  		rubyHash = {}
  		obj.keys.each do |key|
  			# if key != '_id' && key != 'created_at' && key != 'updated_at' && key != 'process_master_id'
  				rubyHash[key] = obj[key]
  			# end
  		end
  		return rubyHash
  	end

  	def SetVariablesForView
  		@employees = Employee.all
			@bands = Band.all
			@departments = Department.all
			@roles = Role.all
			@groups = Group.all
			@processes = ProcessMaster.all

			@forms = []
			all_forms = YAML::load_file("#{Rails.root}/config/forms/index.yml")
			all_forms['forms'].each do |model|
				@form_config = YAML::load_file("#{Rails.root}/config/forms/#{model}.yml")
				@forms.push(title: @form_config['title'], model: @form_config['model'])
			end

			gon.modelData = {}
			gon.modelData['Employee'] = @employees
			gon.modelData['Band'] = @bands
			gon.modelData['Department'] = @departments
			gon.modelData['Role'] = @roles
			gon.modelData['Group'] = @groups
			gon.modelData['processes'] = @processes
			gon.modelData['forms'] = @forms
  	end

    # def process_master_params
    #   params.require(:process_master).permit()
    # end
end

