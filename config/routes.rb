Rails.application.routes.draw do
  devise_for :users

  resources :posts do
  resources :comments
  end
  resources :home

  root to: "home#index"
end
