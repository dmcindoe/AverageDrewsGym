Rails.application.routes.draw do
  resources :appointments
  resources :clients
  resources :trainers
  resources :sessions
  resources :users

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete 'logout'  => 'sessions#destroy'
 
  root to: "appointments#new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
