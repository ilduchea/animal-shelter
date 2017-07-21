# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all

42.times do |i|
  Animal.create(
    name: Faker::HitchhikersGuideToTheGalaxy.character,
    species: Faker::HitchhikersGuideToTheGalaxy.specie,
    breed: Faker::Cat.breed,
    age: Faker::Number.between(1, 20)
  )
end

p "Created #{Animal.count} animals"
