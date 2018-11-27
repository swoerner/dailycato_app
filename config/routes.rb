Rails.application.routes.draw do
  get 'deals/index'
  get 'deals/show'
  get 'deals/create'
  get 'deals/edit'
  get 'deals/update'
  get 'deals/destroy'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/edit'
  get 'restaurants/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
