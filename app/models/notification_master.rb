class NotificationMaster
  include Mongoid::Document

  field :title, type: String
  field :description, type: String
  field :type, type: String
  field :read, type: Boolean, :default => false
  field :erased, type: Boolean

  has_and_belongs_to_many :users
end
