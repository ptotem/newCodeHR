class AbilityMatrix
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_and_belongs_to_many :left_panels
  has_and_belongs_to_many :roles

end
