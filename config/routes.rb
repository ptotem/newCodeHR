Rails.application.routes.draw do

  resources :file_storages

  resources :approvers

  resources :approvals

  resources :generics

  resources :tasks

  resources :notifications

  resources :step_instances

  resources :process_instances

  resources :bands

  resources :groups

  resources :departments

  resources :roles

  resources :employees

  resources :process_masters

  resources :master_steps

  resources :welcomes

  devise_for :users

  match '/delete_notification' => 'notification#delete_notification', :as => :delete_notification, :via => [:get, :post]
  
  root :to => 'welcomes#index'
  mount RailsAdmin::Engine => '/power_admin', as: 'rails_admin'

end
