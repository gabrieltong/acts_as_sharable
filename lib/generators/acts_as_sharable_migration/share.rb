class Share < ActiveRecord::Base
  attr_accessible :sharable_id, :sharable_type, :user_id
  belongs_to :user
  belongs_to :sharable, :polymorphic => true
end
