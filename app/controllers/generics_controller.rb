class GenericsController < InheritedResources::Base

	def new
		@generic = Generic.new
		@model = "Document"
		@step_instance = {_id: "111"}
		@form = Generic.find_by(model: @model)

		gon.form = @form
		
	end

	def create
		# TODO: make step_instance.find_fill_step function in model
		# step_instance = StepInstance.find(params['step'])
		# fillStep = step_instance.find_fill_step
		# fillStep['action_obj'] = params['form']
		# fillStep.save!

		render :json => params
		return
		
	end

  private

    # def generic_params
    #   params.require(:generic).permit()
    # end
end

