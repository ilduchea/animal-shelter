require 'rails_helper'

RSpec.describe Animal, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :species }
  it { should validate_presence_of :breed }
  it { should validate_presence_of :age }

  describe "scopes", type: :request do
    before do
      5.times do
        FactoryGirl.create(:animal)
      end
      animals = Animal.all
      @animal1 = animals[0]
      @animal2 = animals[1]
    end

    describe "name_search" do
      it "returns all animals where search params equals the name" do
        get "/v1/animals?name_search=#{@animal2.name}"
        expect(JSON.parse(response.body).first['name']).to eq(@animal2.name)
      end
    end
    describe "species_search" do
      it "returns all animals where search params equals the species" do
        get "/v1/animals?species_search=#{@animal2.species}"
        expect(JSON.parse(response.body).first['species']).to eq(@animal2.species)
      end
    end
    describe "breed_search" do
      it "returns all animals where search params equals the breed" do
        get "/v1/animals?breed_search=#{@animal2.breed}"
        expect(JSON.parse(response.body).first['breed']).to eq(@animal2.breed)
      end
    end
    describe "age_search" do
      it "returns all animals where search params equals the age" do
        get "/v1/animals?age_search=#{@animal2.age}"
        expect(JSON.parse(response.body).first['age']).to eq(@animal2.age)
      end
    end
  end
end
