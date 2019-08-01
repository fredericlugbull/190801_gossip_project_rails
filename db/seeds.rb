# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do |index|
  User.create!(first_name: Faker::DcComics.hero, last_name: Faker::Movies::StarWars.character, description: "beau-gosse", email: Faker::Internet.email,  age: rand(20..60))
end

puts "J'ai créé 10 profils en automatisé avec la gem Faker, mate un peu le résulat!"
puts tp User.all
