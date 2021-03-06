class StepInstance
  include Mongoid::Document
  include Mongoid::Timestamps
  # include AASM
  include ApplicationHelper

  field :sequence, type: Integer
  field :action, type: String
  field :action_class, type: String
  field :action_obj, type: Hash
  field :spawn_process, type: String
  # field :auto, type: Boolean
  # field :action_parameter, type: Array
  # field :params_mapping, type: Hash
  # field :approval_obj, type: Hash
  # field :notification_obj, type: Hash
  # field :repeat_on, type: String
  field :initiated_at, type: DateTime
  field :finished_at, type: DateTime
  field :state, type: String, :default => "Created"
  field :erased, type: Boolean
  # field :reporting_officer, type: Boolean

  belongs_to :process_instance
  has_one :approval, dependent: :destroy

  # DON'T DELETE...THIS IS TO UNDERSTAND THE FLOW OF CHANGE OF STATES
  # aasm do
  #   state :Created, :initial => true
  #   state :Initiated
  #   state :Processing
  #   state :Finished

  #   event :initialise_step, :after => :init_step do
  #     transitions :from => :Created, :to => :Initiated
  #   end

  #   event :start_processing_step, :after => :post_process_step do
  #     transitions :from =>:Initiated, :to => :Processing
  #   end

  #   event :end_processing_step, :after => :post_finish_step do
  #     transitions :from => :Processing, :to => :Finished
  #   end
  # end

  # def aasm_state
  #   self[:aasm_state] || "Created"
  # end

  def initialise_step
    self.state = "Initiated"
    self.save!
    self.init_step
  end

  def start_processing_step
    self.state = "Processing"
    self.save!
    self.post_process_step
  end

  def end_processing_step
    self.state = "Finished"
    self.save!
    self.post_finish_step
  end

  def terminate_processing_step
    self.state = "Terminated"
    self.save!
    self.post_terminate_step
  end

  def load_step
    puts "#{self.action} is loading....."
    self.initiated_at = DateTime.now
    self.initialise_step
  end

  def terminate_step
    puts "#{self.action} is terminating....."
    self.finished_at = DateTime.now
    self.terminate_processing_step
  end

  def init_step
    puts "Initialise step...."
    puts "#{self.action} initialised...."
    puts "#{self.action} preparing to be processed"
    self.start_processing_step
  end

  def post_process_step
    puts "#{self.action} is processing.."
    puts "#{self.action} is preparing for finish processing"
    self.process_instance.save
    puts "----------------------------------------------"
    puts "Current Step State : "+self.state
    puts "----------------------------------------------"
    #self.end_processing_step
    #step_processing(self.oclass,self.oaction,self.action_to,self.content,self.process_tr._id,self.process_tr.step_trs.index(self),self.process_tr.user_id)
    # step_transaction_processing(self.action_name,self.obj_name,self.process_transact.cobject_id, self.action_obj,self.process_transact._id, self.process_transact.step_transacts.index(self),self.process_transact.user_id)
    step_instance_processing(self)
  end

  def post_finish_step
    puts "#{self.action} is finished"
    self.finished_at = DateTime.now
    self.save
    puts "Calling Next step action or ending process to be done...."
    if self.sequence==self.process_instance.step_instances.length-1
      puts "Last step going to end process"
      self.process_instance.finish_process
    else
      puts "Initialising next steps"
      self.process_instance.load_next_step(self.sequence+1)
    end
  end

   def post_terminate_step
    puts "#{self.action} is terminated"
    self.finished_at = DateTime.now
    self.save
    puts "Terminating Next step action or ending process to be done...."
    if self.sequence==self.process_instance.step_instances.length-1
      puts "Last step going to terminate process"
      self.process_instance.terminate_process
    else
      puts "Terminating next steps"
      self.process_instance.terminate_next_step(self.sequence+1)
    end
  end

  def get_previous_step(query)
    steps = self.process_instance.step_instances.where(query)
    if !steps.nil?
      if steps[0].sequence < self.sequence
        return steps[0]
      else
        return nil
      end
    end
    
  end

end
