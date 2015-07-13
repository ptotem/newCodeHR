class AbilityMatricesController < InheritedResources::Base

  private

    def ability_matrix_params
      params.require(:ability_matrix).permit()
    end
end

