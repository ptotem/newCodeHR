class MasterStep
  include Mongoid::Document
  include Mongoid::Timestamps

  field :sequence, type: Integer
  field :action, type: String
  field :action_class, type: String
  field :action_obj, type: Hash
  # field :auto, type: Boolean
  # field :action_parameter, type: Array
  # field :params_mapping, type: Hash
  # field :approval_obj, type: Hash
  # field :notification_obj, type: Hash
  field :erased, type: Boolean
  field :repeat_on, type: String
  # field :reporting_officer, type: Boolean

  belongs_to :process_master
end
