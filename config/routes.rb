Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'static_pages#index'

  
  resources :catagories, only: [:index, :create, :show, :new] do
    resources :items, only: [:index, :create, :new]
  end


end
