module AnimalCompare
  def animal_compare(animal_base, new_animal)
    status = []
    if animal_base.name === new_animal.name
      status.push true
    end
    if animal_base.species === new_animal.species
      status.push true
    end
    if animal_base.breed === new_animal.breed
      status.push true
    end
    if animal_base.age === new_animal.age
      status.push true
    end

    if status.include? false
      return false
    else
      return true
    end
  end
end
