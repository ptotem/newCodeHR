class LeftPanelsController < InheritedResources::Base

  private

    def left_panel_params
      params.require(:left_panel).permit()
    end
end

