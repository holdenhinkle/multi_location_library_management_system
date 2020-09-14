# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# libraries = 5.times do |n|
#   Library.create({
#     name: "Library #{n}",
#     phone: '(802) ' + n.to_s * 3 + '-' + n.to_s * 4,
#     email: "library#{n}@libraries.com",
#     address_1: "#{1} Main Street",
#     city: "Woodstock",
#     state: 'VT',
#     zip_code: n.to_s * 5
#   })
# end

# books = 5.times do |n|
#   Book.create({
#     isbn: "978-1-56619-909-#{n + 1}",
#     title: "Book #{n + 1}",
#     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec velit rhoncus, consectetur augue at, auctor enim. Donec hendrerit fringilla nisl sit amet pellentesque. Ut consequat erat vel augue feugiat euismod vitae at lectus. Aliquam nec nibh lacinia, porta felis eu, laoreet est. Quisque nibh velit, blandit id tristique vitae, pretium vel leo. Vestibulum ac nisl ac elit porta mollis in nec urna. Nullam non quam hendrerit, imperdiet justo nec, finibus ante.",
#     image_url: "https://via.placeholder.com/150x150",
#     price: "19.95"
#   })
# end

genres = Genre.create([
  { name: 'Autobiography' },
  { name: 'Science Fictuion' },
  { name: 'Romance' },
  { name: 'Fantasy'},
  { name: 'Romance' },
  { name: 'Adventure'},
  { name: 'Contemporary' },
  { name: 'Dystopian'},
  { name: 'Mystery'}
  ])
