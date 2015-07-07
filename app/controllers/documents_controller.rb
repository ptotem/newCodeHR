class DocumentsController < InheritedResources::Base

  private

    def document_params
      params.require(:document).permit()
    end
end

