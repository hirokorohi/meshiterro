Rails.application.routes.draw do

  #get 'usesrs/show'
  #get 'usesrs/edit'
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  #get 'homes/top'
  #get "/users/sign_up", to: "users#new"
  #get "homes/about" => "homes#about"
  get "/homes/about" => "homes#about", as: "about"

  root to: "homes#top"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
