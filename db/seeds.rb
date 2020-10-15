# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all

50.times do |index|
  Recipe.create!(name: Faker::Food.dish, instructions: Faker::Lorem.sentence(word_count:20,supplemental:false,random_words_to_add:0).chop, rating: rand(1..10))
end

p "Created #{Recipe.count} fake recipes with Faker"