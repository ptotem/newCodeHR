class StepInstance
  include Mongoid::Document
  include Mongoid::Timestamps
  include AASM

  field :sequence, type: Integer
  field :action, type: String
  field :action_class, type: String
  # field :action_obj, type: String
  # field :auto, type: Boolean
  # field :action_parameter, type: Array
  # field :params_mapping, type: Hash
  field :approval_obj, type: Hash
  field :notification_obj, type: Hash
  # field :repeat_on, type: String
  field :initiated_at, type: DateTime
  field :finished_at, type: DateTime
  field :erased, type: Boolean
  # field :reporting_officer, type: Boolean

  embedded_in :process_instance


  aasm do
    state :created, :initial => true
    state :initiated
    state :processing
    state :finished

    event :initialise_step, :after => :init_step do
      transitions :from => :created, :to => :initiated
    end

    event :start_processing_step, :after => :post_process_step do
      transitions :from =>:initiated, :to => :processing
    end

    event :end_processing_step, :after => :post_finish_step do
      transitions :from => :processing, :to => :finished
    end
  end

  def aasm_state
    self[:aasm_state] || "created"
  end

  def load_step
    puts "#{self.name} is loading....."
    self.initiated_at = DateTime.now
    self.initialise_step
  end

  def init_step
    puts "Initialise step...."
    puts "#{self.name} initialised...."
    puts "#{self.name} preparing to be processed"
    self.start_processing_step
  end

  def post_process_step
    puts "#{self.name} is processing.."
    puts "#{self.name} is preparing for finish processing"
    self.process_instance.save
    puts "----------------------------------------------"
    puts "Current Step State : "+self.aasm_state
    puts "----------------------------------------------"
    #self.end_processing_step
    #step_processing(self.oclass,self.oaction,self.action_to,self.content,self.process_tr._id,self.process_tr.step_trs.index(self),self.process_tr.user_id)
    # step_transaction_processing(self.action_name,self.obj_name,self.process_transact.cobject_id, self.action_obj,self.process_transact._id, self.process_transact.step_transacts.index(self),self.process_transact.user_id)
    step_instance_processing(self)
  end

  def post_finish_step
    puts "#{self.name} is finished"
    self.finished_at = DateTime.now
    self.save
    puts "Calling Next step action or ending process to be done...."
    if self==self.process_instance.step_instances.last
      puts "Last step going to end process"
      self.process_instance.finish_process
    else
      puts "Initialising next steps"
      self.process_instance.load_next_step(self.process_transact.step_transacts.index(self)+1)
    end
  end
end
