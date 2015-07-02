class StepInstancesController < InheritedResources::Base

  private

    def step_instance_params
      params.require(:step_instance).permit()
    end
end

