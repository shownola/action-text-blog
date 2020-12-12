Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  # /comments/:1/comment/edit/1
  resources :comments do
    resources :comments
  end

  get 'history', to: 'comments#history'
  
  devise_for :users
  get 'about', to: 'pages#about'

  root 'posts#index'
end
