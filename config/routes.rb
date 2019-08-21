Rails.application.routes.draw do
  resources :comments
  resources :quotes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #user

  get '/users', to: "user#index"
  get '/users/:id', to: 'users#show'

end
