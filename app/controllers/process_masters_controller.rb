class ProcessMastersController < ApplicationController

	def index
		@process_masters = ProcessMaster.all
	end

	def new

		@process_master = ProcessMaster.new
		@actionForms = {
			Fill: [{type: "<span />", attributes: {html: "Fill"}}], 
			Approve: [{type: "<span />", attributes: {html: "Approve"}}] 
		}

		gon.actionForms = @actionForms
		
	end

  private

    # def process_master_params
    #   params.require(:process_master).permit()
    # end
end

