# frozen_string_literal: true

# spec/requests/launches_spec.rb
require 'rails_helper'

RSpec.describe 'Launches', type: :request do
  let(:json_body) { JSON.parse(response.body) }

  describe 'GET /next' do
    before { get '/next' }

    it 'receives HTTP status 200' do
      expect(response.status).to eq 200
    end

    it 'receives a json with the "data" root key' do
      expect(json_body['data']).to_not be nil
    end

    it 'receives only 1 launch' do
      expect(json_body['data'].size).to eq 1
    end
  end

  describe 'GET /latest' do
    before { get '/latest' }

    it 'receives HTTP status 200' do
      expect(response.status).to eq 200
    end

    it 'receives a json with the "data" root key' do
      expect(json_body['data']).to_not be nil
    end

    it 'receives only 1 launch' do
      expect(json_body['data'].size).to eq 1
    end
  end

  describe 'GET /past' do
    before { get '/past' }

    it 'receives HTTP status 200' do
      expect(response.status).to eq 200
    end

    it 'receives a json with the "data" root key' do
      expect(json_body['data']).to_not be nil
    end

    it 'receives various launches' do
      expect(json_body['data'].size).to be > 1
    end
  end

  describe 'GET /upcoming' do
    before { get '/upcoming' }

    it 'receives HTTP status 200' do
      expect(response.status).to eq 200
    end

    it 'receives a json with the "data" root key' do
      expect(json_body['data']).to_not be nil
    end

    it 'receives various launches' do
      expect(json_body['data'].size).to be > 1
    end
  end
end
