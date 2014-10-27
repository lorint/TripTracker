Rails.application.routes.draw do
  root "flights#index"

  # When people surf to http://localhost:3000/flights,
  # light up the index action in flights_controller.rb
  # and btw, also if people mention flights_path,
  # have it mean this very path!
  get "flights" => "flights#index", as: :flights

  get "flights/new" => "flights#new", as: :new_flight

  post "flights" => "flights#create"

  delete "flights/:id" => "flights#destroy"

  # So we can get ahold of a route that works with destroy,
  # Let's put in the route for the show action, even though
  # at this point we don't even have it yet!!!
  get "flights/:id" => "flights#show", as: :flight
end
