class Author < ApplicationRecord
  has_many :authors_books
  has_many :books, through: :authors_books
  
  validates :first_name, :last_name, presence: true
  before_create :slugify

  private

  def slugify
    name = first_name + ' ' + last_name
    self.slug = name.parameterize
  end
end
