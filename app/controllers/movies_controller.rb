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

  def update
    movie = Movie.find_by(id: params[:id])

    movie.title = params[:title] || movie.title
    movie.duration = params[:duration] || movie.duration
    movie.age_rating = params[:age_rating] || movie.age_rating
    movie.imdb_rating = params[:imdb_rating] || movie.imdb_rating
    movie.rotten_tomatoes_rating = params[:rotten_tomatoes_rating] || movie.rotten_tomatoes_rating

    if movie.save
      render json: { message: "Movie successfully updated!" }
    else
      render json: { message: "Error, movie not updated!" }
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    if movie.destroy
      render json: { message: "Movie successfully deleted!" }
    else
      render json: { message: "Error, movie not deleted!" }
    end
  end
end
