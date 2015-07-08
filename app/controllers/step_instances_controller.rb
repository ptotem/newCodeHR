class StepInstancesController < InheritedResources::Base

  def approve_step
  	step = StepInstance.find(params[:stepId])
  	@approver = step.approval.approvers.where(:user_id => current_user._id.to_s).first
  	fill_step = step.get_previous_step({action: "Fill"})
  	@path = new_generic_form_path(fill_step._id)
  	# render :json => path
  	# return
  end


  private

    def step_instance_params
      params.require(:step_instance).permit()
    end
end

