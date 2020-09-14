class Genre < ApplicationRecord
  has_many :books_genres
  has_many :books, through: :books_genres
  validates :name, presence: true
  before_create :slugify

  private

  def slugify
    self.slug = name.parameterize
  end
end
