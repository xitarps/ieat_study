Rails.application.routes.draw do
  get 'orders/create'
  get 'products/index'
  resources :restaurants
  resources :products, only: %i[index new create destroy]

  resources :orders, only: %i[ create ]
  
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
