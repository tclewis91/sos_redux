Rails.application.routes.draw do
  resources :emergency_calls
  resources :firstaids

  resources :snakes do
    member do
      patch 'match_red'
      patch 'match_blue'
      patch 'match_yellow'
      patch 'match_white'
      patch 'match_black'
      patch 'match_orange'
      patch 'match_green'
      patch 'match_band'
      patch 'match_stripes'
      patch 'match_solid'
      patch 'match_blotch'
    end
  end

  resources :abouts
  devise_for :users

  resources :posts do
  resources :comments
  end

  resources :user
  resources :home

  resources :spiders

  root to: "home#index"
end
