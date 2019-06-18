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
  post '/logout' => 'sessions#destroy'

  root to: 'pages#index'
  # devise_for :users

#   resources :users do
#     resources :articles do
#       resources :likes
#     end
#   end
#
#   resources :articles do
#     resource :likes
#   end
end
