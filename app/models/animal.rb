class Animal < ApplicationRecord
  validates :name, :species, :breed, :age, presence: true

  
end
