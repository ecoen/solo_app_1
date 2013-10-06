class MoviesController < ApplicationController
  
  def show
  	@movie = Movie.find(params[:id])
  end

  def new
  	@movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)    # Not the final implementation!
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  private

    def movie_params
      params.require(:movie).permit(:title, :rating, :director)
    end

end
