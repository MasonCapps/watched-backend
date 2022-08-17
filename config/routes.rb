Rails.application.routes.draw do
  # User Routes

  # Movie Routes
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"

  # Genre Routes

  # Movies Genres Routes

  # Users Movies Routes
end
