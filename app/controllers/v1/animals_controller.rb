class V1::AnimalsController < ApplicationController
  include AnimalCompare

  def index
    @animals = Animal.all
    json_response(@animals)
  end

  def search
    @animals = Animal.filter(params.slice(:name_search, :species_search, :breed_search, :age_search))
    json_response(@animals)
  end

  def random
    @animal = Animal.order("RANDOM()").limit(1)
    json_response(@animal)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    animal_base = Animal.find(params[:id])
    if @animal.update!(animal_params)
      if animal_compare animal_base, @animal
        render status: 200, json: {
          message: "#{animal_base.name} has successfully been updated."
        }
      else
        render status: 400, json: {
          message: "#{animal_base.name} was not updated."
        }
      end
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      render status: 200, json: {
        message: "#{@animal.name} has been deleted."
      }
    end
  end

private
  def animal_params
    params.permit(:name, :species, :breed, :age)
  end
end
