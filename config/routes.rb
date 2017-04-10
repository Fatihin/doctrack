Rails.application.routes.draw do
  resources :assigns
  resources :documents
  resources :apps

  resources :forms
  devise_for :users
  
  root 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
