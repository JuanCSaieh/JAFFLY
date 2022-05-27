Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flights#index"

  resources :flights
  resources :reservations

  get 'reservations(/:id)/change', to: 'reservations#change', as: :change
  get 'reservations(/:id)/payment', to: 'reservations#payment', as: :payment
end
