class TasksController < InheritedResources::Base

	def show
		@task = Task.find(params[:id])
	end
	
  private

    def task_params
      params.require(:task).permit()
    end
end

