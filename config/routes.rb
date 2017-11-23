Rails.application.routes.draw do
  get 'transactions/new'

  get 'transactions/index'

  namespace :admin do
    resources :users
    resources :amenities
    resources :bookings
    resources :places
    resources :reviews

    root to: "users#index"
  end

  resources :transactions, only: [:new, :create]
  resources :amenities
  resources :reviews
  resources :bookings
  resources :places
  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"


end
