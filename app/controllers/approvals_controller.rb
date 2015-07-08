class ApprovalsController < InheritedResources::Base
	
  private

    def approval_params
      params.require(:approval).permit()
    end
end

