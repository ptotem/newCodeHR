class LeftPanel
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :display_name, type: String

  has_and_belongs_to_many :process_masters
  has_and_belongs_to_many :ability_matrixs
end
