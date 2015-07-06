require 'set'

module ApplicationHelper
	def step_instance_processing(process_instance)
		eval("process_step_#{process_instance[:action]}(process_instance)")
	end

	def process_step_Fill(process_instance)
		puts "############################################################"
		puts "Fill Step"
		puts "############################################################"
		puts process_instance.to_json
		process_instance.end_processing_step
	end

	def process_step_Approve(process_instance)
		puts "############################################################"
		puts "Approve Step"
		puts "############################################################"
		puts process_instance.to_json
		
		approval = {}
		approvers = []

		approval['title'] = 'Approval Request'
		approval['description'] = ''
		approval['link'] = ''
		approval['reminder'] = process_instance['action_obj']['reminder']
		approval['repeat_reminder'] = process_instance['action_obj']['repeat_reminder']
		approval['escalation'] = process_instance['action_obj']['escalation']
		approval['repeat_escalation'] = process_instance['action_obj']['repeat_escalation']
		approval['step_instance'] = process_instance

		process_instance['action_obj']['agents']['users'].each do |approver|
			approvers.push(Approver.create!(:user_id => approver))
		end

		approval_obj = Approval.create(approval)
		approval_obj.approvers = approvers

		approval_obj.save!


		# process_instance.end_processing_step
	end

	def process_step_Notify(process_instance)
		puts "############################################################"
		puts "Notify Step"
		puts "############################################################"
		puts process_instance.to_json
		
		title = process_instance['action_obj']['title']
		description = process_instance['action_obj']['']
		process_instance['action_obj']['agents']['users'].each do |user_id|
			User.find(user_id).notify({title: title, description: description})
		end
		process_instance.end_processing_step
	end

	def process_step_MarkComplete(process_instance)
		puts "############################################################"
		puts "MarkComplete Step"
		puts "############################################################"
		puts process_instance.to_json
		process_instance.end_processing_step
	end

	def process_step_SpawnD(process_instance)
		puts "############################################################"
		puts "SpawnD Step"
		puts "############################################################"
		puts process_instance.to_json
		process_instance.end_processing_step
	end

	def process_step_SpawnI(process_instance)
		puts "############################################################"
		puts "SpawnI Step"
		puts "############################################################"
		puts process_instance.to_json
		process_instance.end_processing_step
	end
end
	