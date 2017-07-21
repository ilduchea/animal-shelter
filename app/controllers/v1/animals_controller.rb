class V1::AnimalsController < ApplicationController
  def index
    @animals = Animal.filter(params.slice(:name_search, :species_search, :breed_search, :age_search, :random))
    json_response(@animals)
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
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "Your animal has successfully been updated."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      render status: 200, json: {
        message: "Your animal has been deleted."
      }
    end
  end

private
  def animal_params
    params.permit(:name, :species, :breed, :age)
  end
end
