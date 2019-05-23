class Api::CatsController < ApplicationController
  def index 
    @response = HTTP.get("https://api.thecatapi.com/v1/images/search?&api_key=#{ENV['API_KEY']}")
    
    render 'index.html'
  end 
end

