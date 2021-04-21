Rails.application.routes.draw do
  devise_for :users
  root to: 'smoothies#index'
  resources :users, only: [:show]
  resources :smoothies, only: [:index, :new]
end
