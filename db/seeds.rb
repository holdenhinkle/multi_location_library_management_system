# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

libraries = 5.times do |n|
  Library.create({
    name: "Library #{n}",
    phone: '(802) ' + n.to_s * 3 + '-' + n.to_s * 4,
    email: "library#{n}@libraries.com",
    address_1: "#{1} Main Street",
    city: "Woodstock",
    state: 'VT',
    zip_code: n.to_s * 5
  })
end
