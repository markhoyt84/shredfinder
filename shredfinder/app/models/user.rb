class User < ActiveRecord::Base
  validates :username, uniqness: true, presence: true
  has_many :spots
  has_many :followers, through: :follower_follows, source: :follower
  has_many :followees, through: :followee_follows, source: :followee
  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
end
