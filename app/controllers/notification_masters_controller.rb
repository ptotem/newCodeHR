class NotificationMastersController < InheritedResources::Base

  private

    def notification_master_params
      params.require(:notification_master).permit()
    end
end

