Rails.application.routes.draw do

  devise_for :users, only: [:registrations,:passwords]
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  root to: 'users#index'

  resources :users, only: [:index, :show] do

    #フォロー
    member do
      get 'follow'
      get 'follower'
    end

    #ユーザ検索用
    collection do
      get 'search'
    end
  end



  resources :posts do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]

    collection do
      get 'search'
    end
        
  end

  #フォロー
  resources :relationships, only: [:create, :destroy,:index]
  
end
