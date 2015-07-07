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


  after_create :complete_obj


  def complete_obj
    self.title = "Approval Request"
    self.description = "Please click on the link to perform your task."
    self.link = ""

    self.reminder = self.step_instance['action_obj']['reminder']
    self.repeat_reminder = self.step_instance['action_obj']['repeat_reminder']
    self.escalation = self.step_instance['action_obj']['escalation']
    self.repeat_escalation = self.step_instance['action_obj']['repeat_escalation']
    self.save!
    
  end

end
