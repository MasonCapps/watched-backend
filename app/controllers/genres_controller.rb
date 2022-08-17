class GenresController < ApplicationController
  def index
    genres = Genre.all
    render json: genres.as_json
  end

  def show
    genre = Genre.find_by(id: params[:id])
    render json: genre.as_json
  end

  def create
    genre = Genre.new(
      name: params[:name],
    )
    if genre.save
      render json: { message: "Genre successfully created!" }
    else
      render json: { message: "Error, genre not created!" }
    end
  end
end
