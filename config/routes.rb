Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :vposts 
  root to: "home#index"
end
