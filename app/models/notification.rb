class Notification
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: String
  field :title, type: String
  field :description, type: String
  field :read, type: Boolean
  field :erased, type: Boolean

  belongs_to :user
end
