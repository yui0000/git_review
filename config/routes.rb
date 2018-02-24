Rails.application.routes.draw do
  devise_for :users
  root 'reviews#index'
  resources :templates, only: [:new, :create] do
    resources :reviews, only: [:index, :new, :create, :search] do
      collection do
        get'search'
      end
    end
  end
end
