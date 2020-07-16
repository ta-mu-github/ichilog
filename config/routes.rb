Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users

  resources :posts do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]

    collection do
      get 'search'
    end
        
  end
  
end
