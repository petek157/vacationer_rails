Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'
  get 'businesses', to: 'home#businesses'

  get 'admin', to: 'admin/access#login'
  get 'index', to: 'home#index'
  get 'slides', to: 'home#slides'
  get 'categories', to: 'home#categories'

  post 'admin/access/attempt_login'
  get 'admin/access/login'
  get 'admin/access/logout'

  namespace :admin do
    resources :sliders
  end

  namespace :admin do
    resources :ad_sets
  end

  namespace :admin do
    resources :features
  end

  namespace :admin do
    resources :businesses
  end
end
