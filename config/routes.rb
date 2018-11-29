Rails.application.routes.draw do

  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'
  resources :restaurants do
    resources :deals
    resources :bookings, only: [:new, :create]
  end
end
