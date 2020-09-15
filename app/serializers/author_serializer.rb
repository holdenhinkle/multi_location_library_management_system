class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :slug
  has_many :books, serializer: BookSerializer
end