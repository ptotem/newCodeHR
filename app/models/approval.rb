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
  
  field :state, type: String, :default => "Pending"
  field :erased, type: Boolean, :default => false

  belongs_to :step_instance
  has_many :approvers


  after_create :complete_obj
  # after_save :check_completion


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

  def send_tasks
    # task task creation function
    # 
    urlHelpers = Rails.application.routes.url_helpers
    task = {title: self.title, description: self.description, link: urlHelpers.approve_step_path(self.step_instance._id)}  
    self.approvers.each do |approver|
      User.find(approver.user_id).send_task(task)
    end
  end

  def check_completion
    check_flag = true
    reject_flag = false
    self.approvers.each do |approver|
      if approver.state != 'Accepted' && approver.state != 'Rejected'
        check_flag = false
      else
        if  approver.state == 'Rejected'
          reject_flag = true
        end
      end
    end

    if check_flag
      if reject_flag
        self.terminate_step_instance
      else
        self.end_step_instance  
      end
    end
    
  end

  def end_step_instance
    self.state = 'Completed'
    self.save!
    self.step_instance.end_processing_step    
  end

  def terminate_step_instance
    self.state = 'Terminated'
    self.save!
    self.step_instance.process_instance.terminate_process_instance    
  end

end
