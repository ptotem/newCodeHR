class ProcessMastersController < ApplicationController

	require "json"
	def index
		@process_masters = ProcessMaster.all
	end

	def new

		@process_master = ProcessMaster.new
		@employees = Employee.all
		@bands = Band.all
		@departments = Department.all
		@roles = Role.all
		@groups = Group.all
		@processes = ProcessMaster.all
		# @forms = Generic.all
		
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

	def create
		# render :json => params
		# return
		# process_master = ProcessMaster.create!(params[:process])
		process_master = ProcessMaster.create!(:name => params[:process]['name'])
		# render :json => params[:masterSteps]
		# return
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

				idsHash = value['action_obj']['agents']['ids']
				value['action_obj']['agents']['ids'] = hashToArray(idsHash)
				process_master.master_steps.push(MasterStep.create!(:sequence => value['sequence'], :action => value['action'], :action_class => value['action_class'], :action_obj => value['action_obj']))
			else
				process_master.master_steps.push(MasterStep.create!(:sequence => value['sequence'], :action => value['action'], :action_class => value['action_class']))
			end

			# render :json => process_master.master_steps
			# return

			# process_master.master_steps.push(MasterStep.create!(value))
		end
		# render :json => process_master.master_steps
		# return
		
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

    # def process_master_params
    #   params.require(:process_master).permit()
    # end
end

