class Notification
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: String
  field :title, type: String
  field :description, type: String
  field :read, type: Boolean, :default => false

  has_and_belongs_to_many :user
end
