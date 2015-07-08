class TasksController < InheritedResources::Base

	def show
		@task = Task.find(params[:id])
		@task.read = true
		@task.save!
	end
	
  private

    # def task_params
    #   params.require(:task).permit()
    # end
end

