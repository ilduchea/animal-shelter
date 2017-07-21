require 'rails_helper'

describe 'animals#destroy', :type => :request do

  before do
    @animal = FactoryGirl.create(:animal)
  end

  it 'deletes the animal' do
    delete "/v1/animals/#{@animal.id}"
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['message']).to eq("Your animal has been deleted.")
  end

  it 'responds with 404' do
    @animal.destroy
    get "/v1/animals/#{@animal.id}"
    expect(response).to have_http_status(404)
  end
end
