require 'set'

module ApplicationHelper
	def step_instance_processing(step_instance)
		eval("process_step_#{step_instance[:action]}(step_instance)")
	end

	def process_step_Fill(step_instance)
		puts "############################################################"
		puts "Fill Step"
		puts "############################################################"
		puts step_instance.to_json
		urlHelpers = Rails.application.routes.url_helpers

		link = urlHelpers.new_generic_form_path(step_instance._id)
		puts link
		step_instance.end_processing_step
	end

	def process_step_Approve(step_instance)
		puts "############################################################"
		puts "Approve Step"
		puts "############################################################"
		puts step_instance.to_json
		
		# approval = {}
		# approvers = []

		# approval['title'] = 'Approval Request'
		# approval['description'] = ''
		# approval['link'] = ''
		# approval['reminder'] = step_instance['action_obj']['reminder']
		# approval['repeat_reminder'] = step_instance['action_obj']['repeat_reminder']
		# approval['escalation'] = step_instance['action_obj']['escalation']
		# approval['repeat_escalation'] = step_instance['action_obj']['repeat_escalation']
		# # approval['step_instance'] = step_instance

		# step_instance['action_obj']['agents']['users'].each do |approver|
		# 	approvers.push(Approver.create!(:user_id => approver))
		# end

		# approval_obj = Approval.create(approval)
		# approval_obj.approvers = approvers

		# approval_obj.save!

		approval_obj = {step_instance: step_instance}
		approval = Approval.create!(approval_obj)
		step_instance['action_obj']['agents']['users'].each do |approver|
			approval.approvers.push(Approver.create!(:user_id => approver))
		end

		approval.save!
		approval.send_tasks


		# step_instance.end_processing_step
	end

	def process_step_Notify(step_instance)
		puts "############################################################"
		puts "Notify Step"
		puts "############################################################"
		puts step_instance.to_json
		
		title = step_instance['action_obj']['title']
		description = step_instance['action_obj']['']
		step_instance['action_obj']['agents']['users'].each do |user_id|
			User.find(user_id).send_notification({title: title, description: description})
		end
		step_instance.end_processing_step
	end

	def process_step_MarkComplete(step_instance)
		puts "############################################################"
		puts "MarkComplete Step"
		puts "############################################################"
		puts step_instance.to_json
		fillStep = step_instance.get_previous_step({action: "Fill"})
		puts fillStep.to_json
		eval(fillStep['action_class']).create!(fillStep['action_obj'])
		step_instance.end_processing_step
	end

	def process_step_SpawnD(step_instance)
		puts "############################################################"
		puts "SpawnD Step"
		puts "############################################################"
		puts step_instance.to_json
		step_instance.end_processing_step
	end

	def process_step_SpawnI(step_instance)
		puts "############################################################"
		puts "SpawnI Step"
		puts "############################################################"
		puts step_instance.to_json
		step_instance.end_processing_step
	end
end
	