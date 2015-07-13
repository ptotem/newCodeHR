class LeftPanelsController < InheritedResources::Base

	def new
		@left_panel = LeftPanel.new
		@process_masters = ProcessMaster.all
		
	end

	def create
		# render :json => params
		# return

		newPanel = {}
		newPanel['name'] = params[:name]
		newPanel['display_name'] = params[:display_name]
		newPanel['process_masters'] = []

		params[:process_masters_ids].each do |process_master_id|
			newPanel['process_masters'].push(ProcessMaster.find(process_master_id))
		end

		left_panel = LeftPanel.create!(newPanel)
		
		left_panel do |format|
      if newPanel.save
        format.html { redirect_to left_panel, notice: 'Left Panel was successfully created.' }
        format.json { render json: left_panel, status: :created, location: left_panel }
      else
        format.html { render action: "new" }
        format.json { render json: left_panel.errors, status: :unprocessable_entity }
      end
    end
		
	end

  private

    def left_panel_params
      params.require(:left_panel).permit()
    end
end

