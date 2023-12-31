Rails.application.routes.draw do
  resources :trainings
  resources :students
  resources :machines
  resources :employees
  resources :gyms
  devise_for :users
  get "/search_gyms", to: "gyms#search", as: "search_gyms"
  get 'home/index'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
