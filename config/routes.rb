Rails.application.routes.draw do
  resources :candidates
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :votes, only:[:create, :new, :show, :index ]
  resources :settings
  root 'votes#index'
  get 'result'=>'votes#result'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
