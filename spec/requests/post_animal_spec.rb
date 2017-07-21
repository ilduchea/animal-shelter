require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/v1/animals', params: {
      name: 'Qwerty',
      species: 'Dog',
      breed: 'Pitbull',
      age: 15
    }
  end


  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('Qwerty')
  end

  it 'returns the animal species' do
    expect(JSON.parse(response.body)['species']).to eq('Dog')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Pitbull')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq(15)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'returns error for missing param in animal post' do
    post '/v1/animals', params: {
      name: '',
      species: 'Dog',
      breed: 'Pitbull',
      age: 15
    }
    expect(response).to have_http_status(422)
  end
end
