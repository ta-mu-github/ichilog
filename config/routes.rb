Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users
  resources :likes, only: [:create, :destroy]

  resources :posts do
    resources :comments, only: :create
    collection do
      get 'search'
    end    
  end
  
end
