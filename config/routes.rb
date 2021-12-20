Rails.application.routes.draw do

  resources :tags
  resources :replies
  resources :comments
  resources :likes, only: [:create, :destroy, :index]
  resources :posts, only: [:index, :show, :create, :update, :destroy]
  resources :users
  resources :comments
  resources :replies

  post '/auth/login', to: 'authentication#login'
  get '/*', to: 'application#not_found'

end
