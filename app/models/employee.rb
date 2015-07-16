class Employee
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String
  field :name, type: String
  field :email, type: String
  field :managers, type: Array
  field :active, type: Boolean, :default => true



  has_one :user
  has_and_belongs_to_many :role
  has_and_belongs_to_many :department
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :band
  belongs_to :document

  after_create :create_user

  def create_user
    self.user=User.create!(:name => self.name, :email =>self.email, :password =>"password", :password_confirmation =>"password")
    self.save
  end

end
