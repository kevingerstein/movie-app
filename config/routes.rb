Rails.application.routes.draw do
  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  post "/actors" => "actors#show"

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
