class Article < ActiveRecord::Base
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  has_many :comments
  has_many :tags, through: :articles_tags
  has_many :articles_tags

  validates :url, presence: true, format: { with: PERFECT_URL_PATTERN }
  validates :text, presence: true, length: { minimum: 5 }
  validates_presence_of :user

  scope :posts_of_followings, -> (following_users) { where user_id: following_users }

end
