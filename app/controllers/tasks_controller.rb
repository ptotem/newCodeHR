class TasksController < InheritedResources::Base

	def approve
		approver_obj = Approver.find(params[:approverId])
		approver_obj.status = params[:value]
		approver_obj.save!
		approver_obj.approval.check_completion
		render :json => params
		return
	end

	def show
		# render :json=> params
		# return
		@task = Task.find(params[:id])
	end
	
  private

    def task_params
      params.require(:task).permit()
    end
end

