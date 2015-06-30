class ProcessMastersController < ApplicationController

	def index
		@process_masters = ProcessMaster.all
	end

	def new

		@process_master = ProcessMaster.new
		@actionForms = {
			Fill: [], 
			Approve: [] 
		}

		gon.actionForms = @actionForms
		
	end

  private

    # def process_master_params
    #   params.require(:process_master).permit()
    # end
end

