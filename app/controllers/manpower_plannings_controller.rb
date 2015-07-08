class ManpowerPlanningsController < InheritedResources::Base

  private

    def manpower_planning_params
      params.require(:manpower_planning).permit()
    end
end

