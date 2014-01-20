class MoviesController < ApplicationController
  
  def show
  	@movie = Movie.find(params[:id])
  end

  def new  
  	@movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(movie_params)
    flash[:success] = "Movie updated"
    redirect_to @movie
  end

  def create
    @movie = Movie.new(movie_params)    # Not the final implementation!
    if @movie.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @movie
    else
      render 'new'
    end
  end

  def index
    @movies = Movie.all
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to movies_path
  end

  private

    def movie_params
      params.require(:movie).permit(:title, :rating, :director)
    end

end
