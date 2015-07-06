class FileStoragesController < InheritedResources::Base

  def create
  	render :text => params
  	return
  end

  def new
  	@file_storage = FileStorage.new
  end

  private

    def file_storage_params
      params.require(:file_storage).permit(:file)
    end
end

