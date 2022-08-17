class Movie < ApplicationRecord
  has_many :movies_genre
  has_many :genres, through: :movies_genre
  has_many :users_movie
  has_many :users, through: :users_movie
end
