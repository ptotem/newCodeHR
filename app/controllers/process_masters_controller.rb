class ProcessMastersController < InheritedResources::Base

  private

    def process_master_params
      params.require(:process_master).permit()
    end
end

