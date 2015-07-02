class ProcessMastersController < ApplicationController

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

		gon.modelData = {}
		gon.modelData['Employee'] = @employees
		gon.modelData['Band'] = @bands
		gon.modelData['Department'] = @departments
		gon.modelData['Role'] = @roles
		gon.modelData['Group'] = @groups
		gon.modelData['processes'] = @processes
		
	end

	def create
		masterSteps = []
		params[:masterSteps].each do |key, value|
			if value['approval_obj']
				value['approval_obj']['manager'] = if value['approval_obj']['manager'] == 'on' then true else false end

				idsHash = value['approval_obj']['approvers']['ids']
				idsArray = []
				if !idsHash.nil?
					idsHash.each do |seq, id|
						idsArray.push(id)
					end
				end
				value['approval_obj']['approvers']['ids'] = idsArray
			end

			if value['notification_obj']
				value['notification_obj']['initiator'] = if value['notification_obj']['initiator'] == 'on' then true else false end
				value['notification_obj']['file'] = if value['notification_obj']['file'] == 'on' then true else false end
					
				idsHash = value['notification_obj']['recipients']['ids']
				idsArray = []
				if !idsHash.nil?
					idsHash.each do |seq, id|
						idsArray.push(id)
					end
				end
				value['notification_obj']['recipients']['ids'] = idsArray
			end
			masterSteps.push(MasterStep.create!(value))
		end
		process_master = ProcessMaster.create!(params[:process])
		process_master.master_steps = masterSteps

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

  private

    # def process_master_params
    #   params.require(:process_master).permit()
    # end
end

