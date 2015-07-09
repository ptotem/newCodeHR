Rails.application.routes.draw do

  resources :manpower_plannings

  resources :documents

  resources :file_storages

  resources :approvers

  resources :approvals

  resources :generics
  get "/fillForm/:step_id" => "generics#new", :as => :new_generic_form

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

  match '/delete_notification/:id' => 'notifications#delete_notification', :as => :delete_notification, :via => [:get, :post]

  match '/approve_step/:stepId' => 'step_instances#approve_step', :as => :approve_step, :via => [:get, :post]
  match '/approve/:approverId/:state' => 'approvers#change_state', :as => :change_approver_state, :via => [:get, :post]

  root :to => 'welcomes#index'
  mount RailsAdmin::Engine => '/power_admin', as: 'rails_admin'

end
