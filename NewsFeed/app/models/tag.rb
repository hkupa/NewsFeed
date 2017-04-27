class Tag < ActiveRecord::Base
  has_many :articles_tags
  has_many :articles, through: :articles_tags

  validates :label, uniqueness: true, length: { minimum: 1, maximum: 15},
    presence: true, format: { with: /[\w\d_]+/,
      message: "only allows letters, digits and underscores(_)"
    }
end
