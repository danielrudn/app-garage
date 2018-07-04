# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..75).each do |i|
  App.create({
    name: Faker::Lorem.sentence(1, false, 4).chomp("."),
    version: Faker::App.version,
    author: Faker::App.author,
    release_date: Faker::Date.between(5.years.ago, Date.today),
    description: Faker::Lorem.paragraph(5, false, 20),
    downloads: Faker::Number.between(1,10000000),
    rated_times: Faker::Number.between(1,10000),
    rating: Faker::Number.between(1,5)
  })  
end
