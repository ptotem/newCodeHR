Rails.application.routes.draw do

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
  
  root :to => 'welcomes#index'
  mount RailsAdmin::Engine => '/power_admin', as: 'rails_admin'

end
