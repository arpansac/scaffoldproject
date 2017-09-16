Rails.application.routes.draw do
  
  
  root "posts#index"


  devise_for :users
  resources :posts
  # allowing only create and destroy on resources
  resources :comments, only: [:create, :destroy]

  
end
