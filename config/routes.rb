Rails.application.routes.draw do
  resources :whales
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   root 'whales#index'
end
