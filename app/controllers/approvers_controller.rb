class ApproversController < InheritedResources::Base

	def change_status
		render :json => params
		return
	end


  private

    def approver_params
      params.require(:approver).permit()
    end
end

