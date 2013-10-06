class MoviePagesController < ApplicationController
  def movie_listing
  end

  def show
  	@movie = Movie.find(params[:id])
  end
end
