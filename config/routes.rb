Rails.application.routes.draw do
  get 'searches', to: "searches#index"
  resources :likes
  resources :comments
  resources :posts
  devise_for :users
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
