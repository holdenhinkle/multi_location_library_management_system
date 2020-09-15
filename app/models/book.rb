class Book < ApplicationRecord
  has_many :books_genres
  has_many :genres, through: :books_genres
  
  has_many :authors_books
  has_many :authors, through: :authors_books

  validates :isbn, :title, :description, :image_url, :price, presence: true
  before_create :slugify
  
  private

  def slugify
    self.slug = title.parameterize
  end
end
