Rails.application.routes.draw do
  resources :snakes
  resources :first_aids
  resources :abouts
  devise_for :users

  resources :posts do
  resources :comments
  end
  resources :home

  root to: "posts#index"
end
