Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: :show
  resources :budgets
  resources :categories
  resources :posts
  resources :tags
  resources :monthlies
  resources :incomes
  resources :revenues


  root "posts#index"

end
