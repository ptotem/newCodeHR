require 'set'

module ApplicationHelper
	def step_instance_processing(process_instance)
		puts process_instance.to_json
		# process_instance.end_processing_step
		eval("process_step_"+process_instance[:action])(process_instance)
	end

	def process_step_Fill(process_instance)
		puts "############################################################"
		puts "Fill Step"
		puts "############################################################"
		process_instance.end_processing_step
	end

	def process_step_Approve(process_instance)
		puts "############################################################"
		puts "Approve Step"
		puts "############################################################"
		process_instance.end_processing_step
	end

	def process_step_Notify(process_instance)
		puts "############################################################"
		puts "Notify Step"
		puts "############################################################"
		process_instance.end_processing_step
	end

	def process_step_MarkComplete(process_instance)
		puts "############################################################"
		puts "MarkComplete Step"
		puts "############################################################"
		process_instance.end_processing_step
	end

	def process_step_SpawnD(process_instance)
		puts "############################################################"
		puts "SpawnD Step"
		puts "############################################################"
		process_instance.end_processing_step
	end

	def process_step_SpawnI(process_instance)
		puts "############################################################"
		puts "SpawnI Step"
		puts "############################################################"
		process_instance.end_processing_step
	end
end
	