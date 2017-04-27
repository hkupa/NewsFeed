class ArticlesTag < ActiveRecord::Base
  validates :article, presence: true
  validates :tag, presence: true
  belongs_to :article
  belongs_to :tag
end
