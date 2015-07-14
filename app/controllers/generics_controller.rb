class GenericsController < InheritedResources::Base
	require 'yaml'

	def new
		@generic = Generic.new
		@step_instance = StepInstance.find(params[:step_id])
		@model = @step_instance[:action_class]

		@form_config = YAML::load_file("#{Rails.root}/config/forms/#{@model}.yml")
		@form_title = @form_config['title']

		@forms = getForm(@model)


		# forms = []
		# forms.push({mainForm: @form_config})
		# @subForm = @form_config['sub-form']
		# @subForms = [];

		# i = 0
		# while @subForm do
		# 	j = 0
		# 	forms[i].subForms = []
		# 	while j < @subForm.length do
		# 		subForm = YAML::load_file("#{Rails.root}/config/forms/#{@subForm[j]['model']}.yml")
		# 		forms[i].subForms
		# 	end
		# 	@subForms.push(subForm)
		# 	@subForm = subForm['sub-form']
		# end

		gon.notice = session[:notice]
		gon.form_config = @form_config
		gon.model = {}
		gon.model['Role'] = Role.all
		gon.model['Band'] = Band.all
		gon.model['Department'] = Department.all
		gon.form = @forms

		
	end

	def create
		render :json => params
		return
		step_instance = StepInstance.find(params['step'])

		if params['files']
			params['files'].each do |key, obj|
				fs = FileStorage.create!(file: obj);
				fs.save!
				params['form'][key] = fs.file.path
			end
		end

		step_instance['action_obj'] = params['form']
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

    # def generic_params
    #   params.require(:generic).permit()
    # end
end

