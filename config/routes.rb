Rails.application.routes.draw do
  resources :process_masters

  resources :master_steps

  mount RailsAdmin::Engine => '/power_admin', as: 'rails_admin'
  resources :notification_masters

  resources :user_tasks

  root :to => 'welcomes#index'
  
  resources :welcomes

  devise_for :users
  
end
