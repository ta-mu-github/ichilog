Rails.application.routes.draw do
  devise_for :users
  root to: 'logins#index'
  #root to: 'posts#index'
end
