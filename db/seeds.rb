# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

(1..20).each do |resto|
  cats = ["belgian", "japanese", "italian", "french", "chinese"]
  bruh = Restaurant.create!(
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    phone_number: Faker::IDNumber.valid,
    category: cats.sample
  )
  (1..4).each do |reviewski|
    fam = Review.create!(
      restaurant_id: bruh.id,
      rating: rand(5),
      content: Faker::University.name
    )
  end
end
