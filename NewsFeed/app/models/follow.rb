class Follow < ActiveRecord::Base
  validates :follow, presence: true
  validates :following, presence: true
  belongs_to :following, foreign_key: 'following_id', class_name: 'User'
  belongs_to :follower, foreign_key: 'follower_id', class_name: 'User'
end
