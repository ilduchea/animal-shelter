require 'rails_helper'

describe "get random animal route", :type => :request do

  before do
    @animals = FactoryGirl.create_list(:animal, 20)
  end

  it 'returns a random animal' do
    get '/v1/random'
    expect(JSON.parse(response.body).size).to eq(1)
  end

end
