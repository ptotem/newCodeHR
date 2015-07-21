class ApproversController < InheritedResources::Base

	def change_state
		approver = Approver.find(params[:approverId])
		# render :json => approver
		# return 
		comments = params[:comments] 
		state = if params[:state] == '0' then 'Rejected' elsif params[:state] == '1' then 'Accepted' else 'Pending' end
		approver.change_state(state, comments)
		redirect_to root_path
	end


  private

    def approver_params
      params.require(:approver).permit()
    end
end

