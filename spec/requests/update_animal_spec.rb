require 'rails_helper'

describe "updates a animal route", :type => :request do

  before do
    @animal = FactoryGirl.create(:animal)

    put "/v1/animals/#{@animal.id}", params: {
      name: "Qwerty jr",
    }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['message']).to eq("Your animal has successfully been updated.")
  end

end
