Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  get 'homepage/index'



  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :posts
  #   root 'home#index'
  root 'homepage#index'
  
end
