Rails.application.routes.draw do
  resources :likes
  resources :stores
  resources :finds
  resources :users
  get 'likes/user/:user_id', to: 'likes#user_likes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
