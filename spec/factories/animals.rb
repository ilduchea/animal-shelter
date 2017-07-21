FactoryGirl.define do
  factory :animal do
    name Faker::HitchhikersGuideToTheGalaxy.character
    species Faker::HitchhikersGuideToTheGalaxy.specie
    breed Faker::Cat.breed
    age Faker::Number.between(1, 20)
  end
  factory :young, class: Animal do
    name Faker::HitchhikersGuideToTheGalaxy.character
    species Faker::HitchhikersGuideToTheGalaxy.specie
    breed Faker::Cat.breed
    age Faker::Number.between(1, 4)
  end
  factory :mature, class: Animal do
    name Faker::HitchhikersGuideToTheGalaxy.character
    species Faker::HitchhikersGuideToTheGalaxy.specie
    breed Faker::Cat.breed
    age Faker::Number.between(5, 20)
  end
end
