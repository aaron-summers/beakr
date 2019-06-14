Rails.application.routes.draw do
  resources :tags
  resources :change_requests
  resources :articles
  resources :admins
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
