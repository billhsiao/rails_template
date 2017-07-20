Rails.application.routes.draw do
  root 'houses#index'
  resources :houses
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # Create a better looking URL for logging in
  get '/login', to: 'sessions#new'
end
