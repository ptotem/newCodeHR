class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :name,              type: String, default: ""
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  has_many :tasks
  accepts_nested_attributes_for :tasks

  has_and_belongs_to_many :notifications

  belongs_to :employee


  # def notify(obj)
  #   obj['user_id'] = self._id
  #   self.send_notification(obj)
  # end

  def send_notification(notification_obj)
    notification_obj['user_id'] = self._id
    self.notifications.push(Notification.create!(notification_obj))
    self.save!
  end

  def send_task(task_obj)
    task_obj['user_id'] = self._id
    self.tasks.push(Task.create!(task_obj))
    self.save!
  end
end
