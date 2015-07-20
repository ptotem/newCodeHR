class GenericsController < InheritedResources::Base
	require 'yaml'

	def new
		@generic = Generic.new
		@step_instance = StepInstance.find(params[:step_id])
		model = @step_instance[:action_class]
		setFormDetailsForView(model)
	end

	def create
		step_instance = StepInstance.find(params['step'])
		parseFilesInForm(params['form'])
		step_instance['action_obj'] = params['form']
		step_instance.save!
		step_instance.end_processing_step
		redirect_to root_path
	end


  def approve_step
    @generic = Generic.new
    approve_step = StepInstance.find(params[:stepId])
    @approver = approve_step.approval.approvers.where(:user_id => current_user._id.to_s).first

    # fill_step = approve_step.get_previous_step({action: "Fill"})
    @step_instance = approve_step.get_previous_step({action: "Fill"})
    # @step_instance = StepInstance.find(fill_step._id)
    model = @step_instance[:action_class]
    @path = change_approver_state_path

    setFormDetailsForView(model)

    
    gon.fill_step = @step_instance
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

  	def setFormDetailsForView(model)
			@form_title = YAML::load_file("#{Rails.root}/config/forms/#{model}.yml")['title']
			forms = getForm(model)

			gon.notice = session[:notice]
			gon.form = forms
			gon.model = {}
			gon.model['Role'] = Role.all
			gon.model['Band'] = Band.all
			gon.model['Department'] = Department.all 		
  	end

    # def generic_params
    #   params.require(:generic).permit()
    # end
end

