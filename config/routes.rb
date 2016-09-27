Rails.application.routes.draw do
  resources :recipes, only: [:new, :create, :show, :index]
  resources :cuisines, only: [:show]
  root to: 'home#index'
end
