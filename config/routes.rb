Rails.application.routes.draw do
  resources :likes
  resources :stores
  resources :finds
  resources :users
  get 'likes/user/:user_id', to: 'likes#user_likes'
  get 'likes/find/:find_id', to: 'likes#find_likes'
  get 'finds/user/:user_id', to: 'finds#user_finds'
  get 'likes/finds/:user_id', to: 'likes#liked_finds'
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  post '/photos', to: 'photos#upload_file'
  get 'users/email/:email/password/:password', to: 'users#login'
  delete 'likes/user/:user_id/find/:find_id', to: 'likes#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
