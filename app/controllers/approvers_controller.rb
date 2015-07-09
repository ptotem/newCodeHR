class ApproversController < InheritedResources::Base

	def change_state
		approver = Approver.find(params[:approverId])
		# comments in params
		comments = '' 
		state = if params[:state] == '0' then 'Rejected' elsif params[:state] == '1' then 'Accepted' else 'Pending' end
		approver.change_state(state, comments)
		redirect_to root_path
		# render :json => Approver.find(params[:approverId])
		# return
	end


  private

    def approver_params
      params.require(:approver).permit()
    end
end

