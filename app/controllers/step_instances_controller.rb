class StepInstancesController < InheritedResources::Base

  def approve_step
  	step = StepInstance.find(params[:stepId])
  	@approver = step.approval.approvers.where(:user_id => current_user._id.to_s).first
  	fill_step = step.get_previous_step({action: "Fill"})
  	@path = change_approver_state_path
    # render :json => @path
    # return

    @generic = Generic.new
    @step_instance = StepInstance.find(fill_step._id)
    @model = @step_instance[:action_class]

    @form_config = YAML::load_file("#{Rails.root}/config/forms/#{@model}.yml")
    @form_title = @form_config['title']
    gon.notice = session[:notice]
    gon.form_config = @form_config
    gon.model = {}
    gon.model['Role'] = Role.all
    gon.model['Band'] = Band.all
    gon.model['Department'] = Department.all
    gon.fill_step = fill_step
  end


  private

    def step_instance_params
      params.require(:step_instance).permit()
    end
end

