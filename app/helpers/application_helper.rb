require 'set'

module ApplicationHelper
	def step_instance_processing(process_instance)
		puts process_instance.to_json
		process_instance.end_processing_step
	end
end
	