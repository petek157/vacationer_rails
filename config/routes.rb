Rails.application.routes.draw do

  
  root 'home#index'
  get 'home/index'

  get 'slides', to: 'home#slides'

  post 'admin/access/attempt_login'
  get 'admin/access/login'
  get 'admin/access/logout'
  
  namespace :admin do
    resources :sliders
  end
end
