FactoryGirl.define do
  factory :animal do
    name Faker::HitchhikersGuideToTheGalaxy.character
    species Faker::HitchhikersGuideToTheGalaxy.specie
    breed Faker::Cat.breed
    age Faker::Number.between(1, 20)
  end
end
