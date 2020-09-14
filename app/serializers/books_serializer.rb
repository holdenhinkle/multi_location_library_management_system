class BooksSerializer
  include FastJsonapi::ObjectSerializer
  attributes :isbn, :slug, :title, :description, :image_url, :price
end
