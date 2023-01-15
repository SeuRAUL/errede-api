# frozen_string_literal: true

class LaunchesController < ApplicationController
  def launches
    @response = RestClient.get 'https://api.spacexdata.com/v4/launches/', { content_type: :json, accept: :json }

    if @response
      render json: @response
    else
      render json: { message: 'No launches found', error: 404 }
    end
  end

  def next
    # @response = RestClient.get "https://api.spacexdata.com/v4/launches/next", {content_type: :json, accept: :json}
    @response = SpacexApi.client.next_launch

    render json: { data: @response }
  end

  def latest
    # @response = RestClient.get "https://api.spacexdata.com/v4/launches/latest", {content_type: :json, accept: :json}
    @response = SpacexApi.client.latest_launch

    render json: { data: @response }
  end

  def past
    # @response = RestClient.get "https://api.spacexdata.com/v4/launches/past", {content_type: :json, accept: :json}
    @response = SpacexApi.client.past_launches

    render json: { data: @response }
  end

  def upcoming
    # @response = RestClient.get "https://api.spacexdata.com/v4/launches/upcoming", {content_type: :json, accept: :json}
    @response = SpacexApi.client.upcoming_launches

    render json: { data: @response }
  end
end
