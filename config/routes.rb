Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # # (INDEX) See all restaurants
  # get "restaurants", to: "restaurants#index"
  # # (SHOW) See details about one restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # # (NEW + CREATE)Create a restaurant
  # # 1. Form (NEW)
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # # 2. (CREATE) Send the form to the server
  # post "restaurants", to: "restaurants#create"
  # # (EDIT + UPDATE) Update a restaurant
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"
  # # Destroy a restaurant
  # delete "restaurants/:id", to: "restaurants#destroy"
  resources :restaurants
end
