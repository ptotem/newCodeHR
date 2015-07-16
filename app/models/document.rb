class Document
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String
  field :name, type: String
  field :file, type: String
  field :version_controlled, type: String
  field :versions, type: Array

  has_many :manpower_plannings
end
