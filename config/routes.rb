Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'static_pages#index'

  resources :users, only: [:index, :show] do
    resources :catagories, only: [:index, :show, :create, :new] do
      resources :items, only: [:create, :new]
    end
  end
end
