class NotificationsController < InheritedResources::Base

	def show
		@notification = Notification.find(params[:id])
	end

	def destroy
		render :json => params
		return
	end

  private

    def notification_params
      params.require(:notification).permit()
    end
end

