class ApproversController < InheritedResources::Base

  private

    def approver_params
      params.require(:approver).permit()
    end
end

