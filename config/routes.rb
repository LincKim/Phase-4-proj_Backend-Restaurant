Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update, :destroy]
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :locations, only: [:index]
  # Restaurants route
  resources :ristorantes 
  post "/reviews", to:"reviews#create"
  get "/reviews", to:"reviews#index"

end
