class ProcessMaster
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :erased, type: Boolean
  
  has_many :master_steps, dependent: :destroy
  accepts_nested_attributes_for :master_steps
  has_and_belongs_to_many :left_panels
end
