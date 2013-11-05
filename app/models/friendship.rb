class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :follower, :class_name => "User", :foreign_key => "follower_id"
  attr_accessible :follower_id, :user_id
end
