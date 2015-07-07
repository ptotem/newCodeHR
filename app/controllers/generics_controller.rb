class GenericsController < InheritedResources::Base

	def new
		@generic = Generic.new
		@step_instance = StepInstance.find(params[:id])
		@model = @step_instance[:action_class]

		@model = "Document"
		@step_instance = {_id: "111"}
		@form = Generic.find_by(model: @model)

		gon.form = @form
		
	end

	def create
		render :json => params
		return

		# step_instance = StepInstance.find(params['step'])
		# step_instance['action_obj'] = params['form']
		# step_instance.save!
		# step_instance.end_processing_step
		# redirect_to 

		
	end

  private

    # def generic_params
    #   params.require(:generic).permit()
    # end
end

