class Api::GiphyController < ApplicationController
  def index
    response = HTTP.get("http://api.giphy.com/v1/gifs/trending", :params => {:api_key => "#{Rails.application.credentials.giphy_api[:api_key]}"})
    render :json => response.parse

  end

end
