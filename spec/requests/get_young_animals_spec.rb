require 'rails_helper'

describe "get all young animals route", :type => :request do

  before do
    FactoryGirl.create_list(:young, 5)
    FactoryGirl.create_list(:mature, 1)
    get "/v1/young"
  end

  it 'returns all young animals' do
    expect(JSON.parse(response.body).size).to eq(5)
  end


end
