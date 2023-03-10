# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'securerandom'


puts "cleaning database..."
Flat.destroy_all

puts "seeding..."

5.times do
  image_id = SecureRandom.hex(10),
  Flat.create!(
    name: Faker::TvShows::Friends.location,
    address: Faker::Address.full_address,
    description: Faker::TvShows::Friends.quote,
    price_per_night: rand(1..300),
    number_of_guests: rand(1..10),
    image_url: "https://source.unsplash.com/#{image_id}/1600x900/?house"
  )

  puts "created #{Flat.last.name}"
end
