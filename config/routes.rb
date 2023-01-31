  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
Rails.application.routes.draw do
  root "users#index"

  resources :users, ony: [:index, :show] do 
    resources :posts,only: [:index, :show]
  end

end
