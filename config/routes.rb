Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users do
  resources :budgets
  resources :categories
  resources :posts
  resources :tags


  root "categories#index"

end
