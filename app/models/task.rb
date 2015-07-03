class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: String
  field :title, type: String
  field :description, type: String
  field :link, type: String
  field :read, type: Boolean, :default => false
  field :erased, type: Boolean, :default => false

  belongs_to :user
end
