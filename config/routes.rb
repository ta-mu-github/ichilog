Rails.application.routes.draw do
  devise_for :users
  root to: 'logins#index'
  resources :users
  resources :posts, only: [:new, :create, :show]
end
