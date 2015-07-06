class GenericsController < InheritedResources::Base

  private

    def generic_params
      params.require(:generic).permit()
    end
end

