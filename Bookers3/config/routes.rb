Rails.application.routes.draw do
devise_for :users
  get "top" =>"users#top"
  root to: "users#show"
  resources :books do
end
  resources :users, only: [:show, :edit, :update, :index]
end