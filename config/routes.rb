Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "/reviews", to:"reviews#create"
  get "/reviews", to:"reviews#index"

end
