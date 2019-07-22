Rails.application.routes.draw do
  resources :books #, only: [:index]
  # get '/books', to: "books#index"
  # get "/books/new", to: "books#new"
  # post "/books", to: "books#create"
  # get '/books/:id', to: "books#show"
  # #, as: "all_book"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
