# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"

Rails.application.routes.draw do
  # devise_for :users
  root "users#index"

  resources :users, ony: [:index, :show] do 
    resources :posts,only: [:index, :show, :new, :create] do 
      resources :comments, only: [:create]
    end
  end

  resources :posts do 
    resources :like, only: [:create]
  end

end
