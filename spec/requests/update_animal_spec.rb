require 'rails_helper'

describe "updates a animal route", :type => :request do

  before do
    @animal = FactoryGirl.create(:animal)
  end

  it "returns the animal's name was updated" do
    put "/v1/animals/#{@animal.id}", params: {
      name: "Qwerty jr",
    }
    expect(JSON.parse(response.body)['message']).to eq("#{@animal.name} has successfully been updated.")
  end

  it "returns the animal's species was updated" do
    put "/v1/animals/#{@animal.id}", params: {
      species: "dog",
    }
    expect(JSON.parse(response.body)['message']).to eq("#{@animal.name} has successfully been updated.")
  end

  it "returns the animal's breed was updated" do
    put "/v1/animals/#{@animal.id}", params: {
      breed: "pitbull",
    }
    expect(JSON.parse(response.body)['message']).to eq("#{@animal.name} has successfully been updated.")
  end

  it "returns the animal's age was updated" do
    put "/v1/animals/#{@animal.id}", params: {
      age: 42,
    }
    expect(JSON.parse(response.body)['message']).to eq("#{@animal.name} has successfully been updated.")
  end

  it "returns the animal was not updated" do
    put "/v1/animals/#{@animal.id}", params: {
      name: @animal.name,
    }
    expect(JSON.parse(response.body)['message']).to eq("#{@animal.name} was not updated.")
  end

end
