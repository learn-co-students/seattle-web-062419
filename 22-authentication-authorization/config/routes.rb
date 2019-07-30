Rails.application.routes.draw do
  resource :users
  resources :students, only: [:show, :new, :index, :create]
  root 'students#index'

  get '/register', to: "users#new", as: "register_path"
  post '/register', to: "users#create"

  get '/login', to: "auth#login", as: "login_path"
  post '/login', to: "auth#verify"
  get '/logout', to: "auth#logout", as: "logout"
end
