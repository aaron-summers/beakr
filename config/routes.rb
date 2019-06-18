Rails.application.routes.draw do
  get 'sessions/new'
  resources :pages
  resources :tags
  resources :change_requests
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#hello'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get 'sessions/destroy', as: :logout

  root to: 'pages#index'
end
