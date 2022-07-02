Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "users#index"
  # Define endpoints for
  post "/api/register", to: 'authentication#register'
  post '/api/login', to: 'authentication#login'
  get '/api/users/:user_id/posts', to: 'posts#posts'
  get '/api/posts/:id/comments', to: 'comments#comments'
  post '/api/comments', to: 'comments#add_comment'

  resources :users, only: [:index, :show] do
resources :posts, only: [:index, :show, :new, :create, :destroy] do      
  resources :comments, only: [:create, :destroy]
      resources :likes, only: [:create]
  end
  end
  get "/posts/new", to: "posts#new"
  post "/posts/create", to: "posts#create"
  post "/users/:user_id/posts/:id/like", to: "likes#create"
  post "/users/:user_id/posts/:id/create_comment", to: "comments#create"
end