class User < ApplicationRecord
  has_many :users_movie
  has_many :movies, through: :users_movie
end
