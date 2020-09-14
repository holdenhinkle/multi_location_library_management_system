class Library < ApplicationRecord
  validates :name, :phone, :email, :address_1, :city, :state, :zip_code, presence: true
  before_create :slugify

  private

  def slugify
    self.slug = name.parameterize
  end
end
