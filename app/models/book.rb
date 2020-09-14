class Book < ApplicationRecord
  has_many :books_genres
  has_many :genres, through: :books_genres
  validates :isbn, :title, :description, :image_url, :price, presence: true
  before_create :slugify
  
  private

  def slugify
    self.slug = title.parameterize
  end
end
