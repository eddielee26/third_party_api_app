class Api::GifsController < ApplicationController
  
  def index
    @gifs = HTTP.get("https://api.giphy.com/v1/gifs/search?&api_key=#{ENV["GIPHY_API_KEY"]}&q=#{params[:search]}&limit=25&offset=0&rating=G&lang=en").parse
    render 'index.json.jb'
  end

end
