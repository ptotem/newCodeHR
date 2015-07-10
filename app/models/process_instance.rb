class ProcessInstance
  include Mongoid::Document
  include Mongoid::Timestamps
  # include AASM

  field :name, type: String
  field :initiator, type: String
  field :facilitators, type: Array #TODO: Yet to Implement Facilitators Functionality
  field :process_master_id, type: String
  field :spawn, type: Boolean, :default => false
  field :dependent, type: Boolean, :default => false
  field :parent_process, type: String, :default => ""
  field :parent_stepno, type: Integer
  field :state, type: String, :default => "Created"
  field :erased, type: Boolean, :default => false

  has_many :step_instances
  accepts_nested_attributes_for :step_instances
  
  # DON'T DELETE...THIS IS TO UNDERSTAND THE FLOW OF CHANGE OF STATES
  # aasm do
  #   state :Created, :initial => true
  #   state :Initiated
  #   state :Processing
  #   state :Finished

  #   event :initialise_process, :after => :init_process do
  #     transitions :from => :Created, :to => :Initiated
  #   end

  #   event :start_processing, :after => :post_operating_process do
  #     transitions :from => :Initiated, :to => :proce
  #   end

  #   event :end_processing, :after => :post_finish_process  do
  #     transitions :from => :Processing, :to => :Finished
  #   end
  # end

  # def aasm_state
  #   self[:aasm_state] || "Created"
  # end

  def initialise_process
    self.state = "Initiated"
    self.save!
    self.init_process
  end

  def start_processing
    self.state = "Processing"
    self.save!
    self.post_operating_process
  end

  def end_processing
    self.state = "Finished"
    self.save!
    self.post_finish_process
  end

  def terminate_processing
    self.state = "Terminated"
    self.save!
    self.post_terminate_process
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
    self.step_instances.where(sequence: 0).first.load_step
  end

  def post_finish_process
    puts "Process is finished"
    puts "Notification Sent to everyone...."
    puts self.to_json
    if self.spawn
      if self.dependent
        parent_process = ProcessInstance.find(self.parent_process)
        puts "Child Process has ended, now resuming back to parent process"
        parent_process.step_instances[self.parent_stepno].end_processing_step
      end
    end
  end

  def post_terminate_process
    puts "Process is terminated"
    puts "Notification Sent to everyone...."
    if self.spawn
      if self.dependent
        parent_process = ProcessInstance.find(self.parent_process)
        puts "Child Process has terminated, now terminating parent process"
        parent_process.terminate_process
      end
    else
      title = "Process Termination"
      description = "Process "+ "'" +self.name + "'" + " has been Terminated.."
      User.find(self.initiator).send_notification({title: title, description: description})
    end
  end

  def finish_process
    puts "###################################################"
    self.end_processing
  end

  def terminate_process
    puts "###################################################"
    self.terminate_processing
  end

  def load_next_step(sequence)
    puts "Loading next steps of process (sequence: #{sequence})..."
    self.step_instances.where(sequence: sequence).first.load_step
  end

  def terminate_next_step(sequence)
    puts "Terminating next steps of process (sequence: #{sequence})..."
    self.step_instances.where(sequence: sequence).first.terminate_step
  end

  def build_process_instance
    process_master = ProcessMaster.find(self.process_master_id)
    master_steps = process_master.master_steps
    processInstanceDuplicate = duplicateModelObject(process_master)
    
    self.update_attributes(processInstanceDuplicate)

    stepInstances = []
    master_steps.asc(:sequence).each do |step|
      _step = duplicateModelObject(step)
      if _step['action_obj']
        _step['action_obj']['agents']['users'] = getUsersFromAgents(_step['action_obj']['agents']['model'], _step['action_obj']['agents']['ids'])
        
        if _step['action_obj']['manager'] 
          current_emp = current_user.employee
          if current_emp
            current_emp['managers'].each do |manager|
              _step['action_obj']['agents']['users'] << manager.user._id unless _step['action_obj']['agents']['users'].include?(manager.user._id)
            end
          end
        end

        if _step['action_obj']['initiator'] 
          _step['action_obj']['agents']['users'] << current_user._id unless _step['action_obj']['agents']['users'].include?(current_user._id)
        end
      end
      self.step_instances.push(StepInstance.create!(_step))
    end

    self.save!
    self.load_process
  end

  def duplicateModelObject(modelObj)
    _modelObj = {}
    modelObj.attributes.each do |key, value|
      if key != '_id' && key != 'created_at' && key != 'updated_at' && key != 'process_master_id'
        _modelObj[key] = value
      end
    end
    return _modelObj
  end

  def getUsersFromAgents(model, array)
      users = []
      if model != "Employee"
        if !model.empty?
          modelValues = eval(model).find(array)
          modelValues.each do |modelValue|
            modelValue.employees.each do |employee|
              users.push(employee.user._id)
            end
          end
        end
      else
        array.each do |employee|
          users.push(Employee.find(employee).user._id)
        end
      end

      return users
    end

end
