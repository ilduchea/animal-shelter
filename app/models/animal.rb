class Animal < ApplicationRecord
  include Filterable
  
  validates :name, :species, :breed, :age, presence: true

  scope :name_search, -> (name){ where("lower(name) like ?", "%#{name}%".downcase) }
  scope :species_search, -> (species){ where("lower(species) like ?", "%#{species}%".downcase) }
  scope :breed_search, -> (breed){ where("lower(breed) like ?", "%#{breed}%".downcase) }
  scope :age_search, -> (age){ where(age: age) }
end
