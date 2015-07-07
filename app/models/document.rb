class Document
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  field :code, type: String
  field :name, type: String
  field :version_controlled, type: String

  has_mongoid_attached_file :file
end
