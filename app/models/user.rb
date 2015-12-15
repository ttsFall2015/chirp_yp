class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets
  has_many :relationships
  has_many :friend, through: : relationships
  has_many :inverse_relationships, class_name: "relationship", foreign_key: "friend_id"
  has_many :inverse_friends, through: : inverse_relationships, source: : user
  has_many :likes


  validates :username, presence: true, uniqueness: true

  def likes?(tweet)
      tweet.likes.where(user_id: id).any?
  end

end
