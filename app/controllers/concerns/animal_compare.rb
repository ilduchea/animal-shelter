module AnimalCompare
  def animal_compare(animal_base, new_animal)
    update_array = []
    if animal_base.name != new_animal.name
      update_array.push 'updated'
    end
    if animal_base.species != new_animal.species
      update_array.push 'updated'
    end
    if animal_base.breed != new_animal.breed
      update_array.push 'updated'
    end
    if animal_base.age != new_animal.age
      update_array.push 'updated'
    end

    update_array.include? 'updated'
  end
end
