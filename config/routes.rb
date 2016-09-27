Rails.application.routes.draw do
  devise_for :users
  resources :recipes, only: [:new, :create, :show, :index, :edit, :update]
  resources :cuisines, only: [:show]
  root to: 'home#index'
end
