class GenericsController < InheritedResources::Base
	require 'yaml'

	def new
		@generic = Generic.new
		@step_instance = StepInstance.find(params[:step_id])
		@model = @step_instance[:action_class]

		@form_config = YAML::load_file("#{Rails.root}/config/forms/#{@model}.yml")
		@form_title = @form_config['title']

		@forms = getForm(@model)

		gon.notice = session[:notice]
		gon.form_config = @form_config
		gon.form = @forms
		gon.model = {}
		gon.model['Role'] = Role.all
		gon.model['Band'] = Band.all
		gon.model['Department'] = Department.all
		
	end

	def create
		step_instance = StepInstance.find(params['step'])
		# render :json => params['form']
		# return
		parseFilesInForm(params['form'])
		step_instance['action_obj'] = params['form']
		# render :json => step_instance
		# return
		step_instance.save!
		step_instance.end_processing_step
		redirect_to root_path

		
	end

  private

  	def getForm(model)
  		form_obj = {}
  		main_form = YAML::load_file("#{Rails.root}/config/forms/#{model}.yml")
  		form_obj['main_form'] = main_form
  		if main_form['sub_forms']
  			form_obj['sub_forms'] = []
  			i = 0
  			length = main_form['sub_forms'].length
  			while i < length
  				sub_form_obj = getForm(main_form['sub_forms'][i]['model'])
  				form_obj['sub_forms'].push(sub_form_obj)
  				i = i + 1
  			end
  		end

  		return form_obj
  		
  	end

  	def parseFilesInForm(form_obj)
  		form_obj['main_form'].each do |key, value|
  			if value.class != String && value.class != Array
  				fs = FileStorage.create!(file: value)
  				form_obj['main_form'][key] = fs.file.path
  			end
			end

			if form_obj['sub_forms']
				i = 0
				length = form_obj['sub_forms'].keys.length
				while i < length
					parseFilesInForm(form_obj['sub_forms'][i.to_s])
					i = i + 1
				end
			end
  	end

    # def generic_params
    #   params.require(:generic).permit()
    # end
end

