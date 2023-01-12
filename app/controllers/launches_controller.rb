class LaunchesController < ApplicationController
  def launches
    @response = RestClient.get "https://api.spacexdata.com/v4/launches/", {content_type: :json, accept: :json}

    if @response
      render json: @response
    else
      render json: {message: "No launches found", error: 404 }
    end
  end
end
