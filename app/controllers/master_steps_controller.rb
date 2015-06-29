class MasterStepsController < InheritedResources::Base

  private

    def master_step_params
      params.require(:master_step).permit()
    end
end

