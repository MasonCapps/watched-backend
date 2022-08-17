class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      title: params[:title],
      duration: params[:duration],
      age_rating: params[:age_rating],
      imdb_rating: params[:imdb_rating],
      rotten_tomatoes_rating: params[:rotten_tomatoes_rating],
    )
    if movie.save
      render json: { message: "Movie successfully created!" }
    else
      render json: { message: "Error, movie was not created!" }
    end
  end
end
