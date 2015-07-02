class ProcessInstance
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :erased, type: Boolean

  has_many :step_instances
  accepts_nested_attributes_for :step_instances
end
