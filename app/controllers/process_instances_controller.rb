class ProcessInstancesController < InheritedResources::Base

  private

    def process_instance_params
      params.require(:process_instance).permit()
    end
end

