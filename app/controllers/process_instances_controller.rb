class ProcessInstancesController < InheritedResources::Base

	def new
		@process_instance = ProcessInstance.new
		@process_masters = ProcessMaster.all
	end

	def create
		@process_master = ProcessMaster.find(params[:process_master])
		@master_steps = @process_master.master_steps

		stepInstances = []
		@master_steps.each do |step|
			stepInstances.push(step.dup)
		end

		render :json => stepInstances
		return
	end

  private

  #   def process_instance_params
  #     params.require(:process_instance).permit()
  #   end
end

