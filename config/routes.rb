Rails.application.routes.draw do
#nesting the payments under orders because there wont be payments without an order
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'
  resources :restaurants do
    resources :deals
    resources :bookings, only: [:new, :create, :show] do
      resources :payments, only: [:new, :create]
    end
  end
end
