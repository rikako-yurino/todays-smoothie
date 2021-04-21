Rails.application.routes.draw do
  get 'smoothies/index'
  get 'users/index'
  devise_for :users
  root to: 'smoothies#index'
end
