class Book < ApplicationRecord
  validates :isbn, :title, :description, :image_url, :price, presence: true
  before_create :slugify
  
  private

  def slugify
    self.slug = title.parameterize
  end
end
