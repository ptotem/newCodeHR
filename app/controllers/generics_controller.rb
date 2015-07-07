class GenericsController < InheritedResources::Base

	def new
		@generic = Generic.new
		@form = Generic.find_by(model: "Document")
		gon.form = @form
		
	end

	def create
		# file = FileStorage.create!(:file => params['form']['file'])
		render :text => params
		return
		
	end

  private

    # def generic_params
    #   params.require(:generic).permit()
    # end
end

