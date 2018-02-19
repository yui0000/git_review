Rails.application.routes.draw do
  devise_for :users
  root 'reviews#index'
  resources :templates, only: [:new, :create] do
    resources :reviews 
    collection do
      get 'search'
    end
  end
  resources :reviews, only: :index
end
