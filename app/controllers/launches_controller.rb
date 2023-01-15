# frozen_string_literal: true

class LaunchesController < ApplicationController
  def next
    @response = SpacexApi.client.next_launch

    render json: { data: @response }
  end

  def latest
    @response = SpacexApi.client.latest_launch

    render json: { data: @response }
  end

  def past
    @response = SpacexApi.client.past_launches

    render json: { data: @response }
  end

  def upcoming
    @response = SpacexApi.client.upcoming_launches

    render json: { data: @response }
  end
end
