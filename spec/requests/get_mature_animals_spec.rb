require 'rails_helper'

describe "get all mature animals route", :type => :request do

  before do
    FactoryGirl.create_list(:mature, 5)
    FactoryGirl.create_list(:young, 1)
    get "/v1/mature"
  end

  it 'returns all mature animals' do
    expect(JSON.parse(response.body).size).to eq(5)
  end


end
