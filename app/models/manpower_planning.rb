class ManpowerPlanning
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String
  field :name, type: String
  field :description, type: String

  field :role, type: String
  field :department, type: String
  field :band, type: String
  field :location, type: String
  field :source, type: String
  field :nature, type: String
  field :vacancy, type: Integer
  field :start_date, type: Date
  field :end_date, type: Date
end
