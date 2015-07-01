class DepartmentsController < InheritedResources::Base

  private

    def department_params
      params.require(:department).permit()
    end
end

