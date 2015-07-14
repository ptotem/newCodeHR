class Approver
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: String
  field :state, type: String, :default => "Pending"
  field :comments, type: String
  field :performed_on, type: Date


  belongs_to :approval

  def change_state(state, comments)
  	puts state
		if self.state != 'Accepted' || self.state != 'Rejected'
			self.state = state
			self.save!
			if state == 'Rejected'
				user = User.find(self.user_id)
				process_name = self.approval.step_instance.process_instance.name
				description = "Your approval for '" + process_name + "' has been rejected by "+user.name
				if comments != ''
					comments = "Contact "+ user.name + " for Clarification"
				end
				user.send_notification({title: "Approval Rejected!", description: description, comments: comments})
			end
			self.approval.check_completion
		else
			#toastr of already accepted or rejected state
		end
  end

end
