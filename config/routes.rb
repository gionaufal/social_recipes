Rails.application.routes.draw do
  resources :recipes, only: [:new, :create, :show, :index]
  root to: 'home#index'
end
