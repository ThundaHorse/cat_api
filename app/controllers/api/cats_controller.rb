class Api::CatsController < ApplicationController
  def index 
    response = HTTP.get("https://api.thecatapi.com/v1/images/search?breed_ids=bengal&api_key=#{ENV['API_KEY']}")
      
    render json: response.parse 
  end 
end
