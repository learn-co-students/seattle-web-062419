Rails.application.routes.draw do
  resources :authors
  resources :books
  # get 'books', to: 'books#index', as: "register"
  # get 'books/:id', to: 'books#show', as: "test"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
