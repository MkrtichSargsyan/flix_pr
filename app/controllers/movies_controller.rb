class MoviesController < ApplicationController
  def index
    @movies = Movie.released
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: 'Movie successfully created!'
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
    console
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie successfully updated!!'
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path, alert: "Movie successfully deleted!"
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :image_file_name, :duration, :director, :description, :rating,
                                  :released_on, :total_gross)
  end
end

