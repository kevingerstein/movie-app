Rails.application.routes.draw do
  get "/actor/:id" => "actors#find_actor"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
end
