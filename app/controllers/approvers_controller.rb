class ApproversController < InheritedResources::Base

	def change_status
		approver = Approver.find(params[:approverId])
		# comments in params
		comments = '' 
		status = if params[:status] == '0' then 'Rejected' elsif params[:status] == '1' then 'Accepted' else 'Pending' end
		approver.change_status(status, comments)
		redirect_to root_path
		render :json => Approver.find(params[:approverId])
		return
	end


  private

    def approver_params
      params.require(:approver).permit()
    end
end

