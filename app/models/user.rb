class User < ActiveRecord::Base
  has_many :friendships, :foreign_key => "user_id", :dependent => :destroy
  has_many :occurances_as_friend, :class_name => "Friendship", :foreign_key => "follower_id", :dependent => :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :nickname, :password

  validates_uniqueness_of :nickname, :email
end
