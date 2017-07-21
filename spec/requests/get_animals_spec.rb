require 'rails_helper'

describe "get all animals route", :type => :request do

  before do
    @animals = FactoryGirl.create_list(:animal, 20)
    get "/v1/animals"
  end

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns status code of 404 when not found' do
    get "/v1/animals/00"
    expect(response).to have_http_status(404)
  end

  it 'should return 200 for specific animal' do
    animal1 = @animals.first
    get "/v1/animals/#{animal1.id}"
    expect(response).to have_http_status(200)
  end
end
