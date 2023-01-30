Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "post", to: "post#index"
  get "post", to: "post#show"

  get "user", to: "user#index"
  get "user", to: "user#show"

  get "comment", to: "comment#index"
  get "comment", to: "comment#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
