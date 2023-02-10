Rails.application.routes.draw do
  devise_for :users
  resources :my_friends
  get 'home/index'
  get 'home/about'
  get 'home/sign_out_user'
  root "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
