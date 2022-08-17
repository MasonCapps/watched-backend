Rails.application.routes.draw do
  # User Routes

  # Movie Routes
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  # Genre Routes

  # Movies Genres Routes

  # Users Movies Routes
end
