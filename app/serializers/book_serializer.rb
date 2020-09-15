class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :isbn, :slug, :title, :description, :image_url, :price
  has_many :genres, serializer: GenreSerializer
  has_many :authors, serializer: AuthorSerializer
end
