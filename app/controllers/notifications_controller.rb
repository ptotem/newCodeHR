class NotificationsController < InheritedResources::Base

	def show
		@notification = Notification.find(params[:id])
		@notification.read = true
		@notification.save!
	end

	def delete_notification
		notification = Notification.find(params[:id])
		notification.destroy
		redirect_to notification
	end

  private

    # def notification_params
    #   params.require(:notification).permit()
    # end
end

