class Approver
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: String
  field :status, type: String, :default => "Pending"
  field :comment, type: String
  field :performed_on, type: Date


  belongs_to :approval

  after_save :update_approval


  def update_approval
  	self.approval.check_completion
  end


end
