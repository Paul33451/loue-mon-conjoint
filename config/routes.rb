Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show]
  resources :bookings, only: [:destroy]

  resources :offers do
    resources :bookings, only: [:new, :create, :show]
  end

  patch '/bookings/:id', to: 'bookings#accept', as: 'booking_accept'
  get '/pages/profile', to: 'pages#profile', as: 'profile'
end
