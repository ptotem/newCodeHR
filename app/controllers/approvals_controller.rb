class ApprovalsController < InheritedResources::Base

	def approval
		approver_obj = Approver.find(params[:approverId])
		approver_obj.status = params[:value]
		approver_obj.save!
		approver_obj.approval.check_completion
		render :json => params
		return
	end
	
  private

    def approval_params
      params.require(:approval).permit()
    end
end

