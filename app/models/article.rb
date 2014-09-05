class Article < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :body

  scope :published, lambda { where("articles.published_at IS NOT NULL") }
  scope :draft, lambda { where("articles.published_at IS NULL") }
  scope :recent, lambda { published.where("articles.published_at > ?", 1.week.ago.to_date)}

  def published?
    published_at.present?
  end

end
