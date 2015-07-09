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
			puts self.to_json
			if state == 'Rejected'
				User.find(self.user_id).send_notification({title: "Rejection", description: comments})
			end
			self.approval.check_completion
		else
			#toastr of already accepted or rejected state
		end
  end

end
