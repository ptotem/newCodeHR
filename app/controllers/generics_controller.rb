class GenericsController < InheritedResources::Base

	def new
		@generic = Generic.new
		@step_instance = StepInstance.find(params[:step_id])
		@model = @step_instance[:action_class]
		@form = Generic.find_by(model: @step_instance[:action_class])

		gon.notice = session[:notice]
		gon.form = @form
		
	end

	def create
		# render :text => params
		# return

		step_instance = StepInstance.find(params['step'])

		params['files'].each do |key, obj|
			fs = FileStorage.create!(file: obj);
			fs.save!
			params['form'][key] = fs.file.path
		end

		step_instance['action_obj'] = {obj: params['form']}
		step_instance.save!
		step_instance.end_processing_step
		redirect_to root_path

		
	end

  private

    # def generic_params
    #   params.require(:generic).permit()
    # end
end

