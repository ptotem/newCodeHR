class Approval
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String
  field :link, type: String
  field :reminder, type: String
  field :repeat_reminder, type: String
  field :escalation, type: String
  field :repeat_escalation, type: String
  
  field :status, type: String, :default => "Pending"
  field :erased, type: Boolean, :default => false

  belongs_to :step_instance
  has_many :approvers

end
