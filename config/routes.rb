Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show]
  resources :bookings, only: [:destroy, :update]

  resources :offers do
    resources :bookings, only: [:new, :create]
  end
end
