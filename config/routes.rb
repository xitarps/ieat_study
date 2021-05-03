Rails.application.routes.draw do
  get 'products/index'
  resources :restaurants
  resources :products, only: %i[index new create destroy]
  
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
