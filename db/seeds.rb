require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'creating a nice seed'

30.times do
  Flat.create(
    name: Faker::Fantasy::Tolkien.location,
    address: Faker::Address.full_address,
    description: Faker::Hipster.paragraph,
    price_per_night: rand(40..300),
    number_of_guests: rand(2..12)
  )
end

puts 'flats created !!'
