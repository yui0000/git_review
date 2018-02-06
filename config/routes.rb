Rails.application.routes.draw do
  devise_for :users
  root 'templates#new'
  resources :templates, only: [:new, :create]
end
