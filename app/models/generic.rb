class Generic
  include Mongoid::Document
  include Mongoid::Timestamps

  field :model, type: String
  field :title, type: String
  field :labels, type: Hash
  field :html, type: Array

end
