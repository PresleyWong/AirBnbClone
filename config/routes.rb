Rails.application.routes.draw do
  resources :amenities
  resources :reviews
  resources :bookings
  resources :places
  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"


end
