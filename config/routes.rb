Rails.application.routes.draw do

root to: 'pages#home'
  devise_for :users

  resources :restaurants do
    resources :deals
  end
end
