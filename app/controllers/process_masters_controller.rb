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

		gon.modelData = {}
		gon.modelData['Employee'] = @employees
		gon.modelData['Band'] = @bands
		gon.modelData['Department'] = @departments
		gon.modelData['Role'] = @roles
		gon.modelData['Group'] = @groups
		
	end

	def create
		masterSteps = []
		params[:masterSteps].each do |key, value|
			if value['approval_obj']
				idsHash = value['approval_obj']['approvers']['ids']
				idsArray = []
				idsHash.each do |seq, id|
					idsArray.push(id)
				end
				value['approval_obj']['approvers']['ids'] = idsArray
			end

			if value['notification_obj']
				idsHash = value['notification_obj']['recipients']['ids']
				idsArray = []
				idsHash.each do |seq, id|
					idsArray.push(id)
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

		# render :json => @process_master.master_steps
		# return

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

