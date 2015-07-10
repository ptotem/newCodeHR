class GenericsController < InheritedResources::Base
	require 'yaml'

	def new
		@generic = Generic.new
		@step_instance = StepInstance.find(params[:step_id])
		@model = @step_instance[:action_class]

		@form_config = YAML::load_file("#{Rails.root}/config/forms/#{@model}.yml")
		@form_title = @form_config['title']
		gon.notice = session[:notice]
		gon.form_config = @form_config
		gon.model = {}
		gon.model['Role'] = Role.all
		gon.model['Band'] = Band.all
		gon.model['Department'] = Department.all
		
	end

	def create
		# render :json => params
		# return
		step_instance = StepInstance.find(params['step'])

		if params['files']
			params['files'].each do |key, obj|
				fs = FileStorage.create!(file: obj);
				fs.save!
				params['form'][key] = fs.file.path
			end
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

