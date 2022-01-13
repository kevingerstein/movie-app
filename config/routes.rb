Rails.application.routes.draw do
  get "actor/:id" => "actors#find_actor"
end
