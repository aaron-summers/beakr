Rails.application.routes.draw do
  resources :comments
  get 'sessions/new'
  resources :pages
  resources :tags
  resources :users
  resources :likes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#hello'
  #root '/login' => "sessions#new"
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get 'sessions/destroy', as: :logout

  root to: 'pages#index'
  devise_for :users

  resources :users do
    resources :pages do
      resources :likes
    end
  end
end
