class Approver
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: String
  field :status, type: String, :default => "Pending"
  field :comment, type: String
  field :performed_on, type: Date


  belongs_to :approval

  def change_status(status, comments)
		if self.status != 'Accepted' || self.status != 'Rejected'
			self.status = status
			self.save!
			if status == 'Rejected'
				User.find(self.user_id).send_notification({title: "Rejection", description: comments})
			end
			self.approval.check_completion
		else
			#toastr of already accepted or rejected status
		end
  end

end
