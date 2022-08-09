class Genre < ApplicationRecord
  has_many :movies_genre
  has_many :movies, through :movies_genre
end
