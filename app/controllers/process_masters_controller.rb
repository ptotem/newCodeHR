class ProcessMastersController < InheritedResources::Base

	def new
		@process_master = ProcessMaster.new
		@actionForms = {
			Fill: [
				{type: "<div />", attributes: {class: "fill class"}}
			] 
		}

		gon.actionForms = @actionForms
		
	end

  private

    def process_master_params
      params.require(:process_master).permit()
    end
end

