class User < ActiveRecord::Base
  include BCrypt

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :email, presence: true
  validate :capitalname

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow', dependent: :destroy
  has_many :followers, through: :follower_relationships, source: :follower
  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow', dependent: :destroy
  has_many :following, through: :following_relationships, source: :following

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def capitalname
    errors.add(:name, 'name is not capitalized') unless !name.nil? && name == name.capitalize
  end
end
