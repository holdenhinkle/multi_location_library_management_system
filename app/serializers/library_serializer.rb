class LibrarySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :slug, :phone, :email, :address_1, :address_2, :city, :state, :zip_code, :active
end
