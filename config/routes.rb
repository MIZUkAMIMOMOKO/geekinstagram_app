Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
    get 'tops/index' => 'tops#index'
    get :following, :followers
    
    end
  end
  resources :relationships,  only: [:create, :destroy]
  resources :comments,  only: [:create, :destroy]

  resources :instagrams do
    resources :comments,  only: [:create, :destroy]
  end
  resources :instagrams do
    resources :likes, only: [:create, :destroy]
  end
  
  resources :instagrams do
    resources :relationships, only: [:create, :destroy]
  end

  
  root 'tops#index' 
end
