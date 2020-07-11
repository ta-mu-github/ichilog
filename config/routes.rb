Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users
  resources :posts

  resources :posts do
    resources :comments, only: :create
  end
  
end
