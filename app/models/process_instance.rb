class ProcessInstance
  include Mongoid::Document
  include Mongoid::Timestamps
  include AASM

  field :name, type: String
  field :process_master_id, type: String
  field :dependent, type: Boolean, :default => false
  field :parent_process, type: String, :default => ""
  field :erased, type: Boolean, :default => false

  has_many :step_instances
  accepts_nested_attributes_for :step_instances

  aasm do
    state :created, :initial => true
    state :initiated
    state :processing
    state :finished

    event :initialise_process, :after => :init_process do
      transitions :from => :created, :to => :initiated
    end


    event :start_processing, :after => :post_operating_process do
      transitions :from => :initiated, :to => :processing
    end

    event :end_processing, :after => :post_finish_process  do
      transitions :from => :processing, :to => :finished
    end


  end

  def aasm_state
    self[:aasm_state] || "created"
  end

  def load_process
    puts "Step is loading....."
    self.initialise_process
  end

  def init_process
    puts "Initialise step...."
    puts "Step is initialised...."
    puts "Step is preparing to be processed"
    self.start_processing
  end

  def post_operating_process
    puts "step is processing.."
    puts "Step is preparing for finish processing"
    #self.end_processing
    self.step_instances.first.load_step
    #self.finish_process
  end

  def post_finish_process
    puts "Process is finished"
    puts "Notification Sent to everyone...."
    # if created_by_process
    #   if !self.dependent.nil?
    #     if self.dependent
    #       @parent_pro = ProcessTransact.find(self.parent_pro_id)
    #       puts "Child Process has ended now resuming back to parent process"
    #       @parent_pro.step_transacts[self.parent_step_no.to_i].end_processing_step
    #     end
    #   end
    # end
  end

  def finish_process
    puts "###################################################"
    self.end_processing
  end

  def load_next_step(counter)
    puts "Loading next steps of process..."
    self.step_instances[counter].load_step
  end
end
