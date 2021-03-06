class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_and_belongs_to_many :employees
  has_and_belongs_to_many :ability_matrices
end
