class Employee
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String
  field :name, type: String
  field :email, type: String
  field :managers, type: Array


  belongs_to :user
  has_one :roles
  has_one :departments
  has_one :groups
  has_one :bands
end
