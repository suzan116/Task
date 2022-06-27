Rails.application.routes.draw do
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  devise_for :system_users

  # devise_for :admin

  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'system_users/sign_out'
  # resources :sign_ins
  resources :jobs_apps
  resources :adding_jobs
  # resources :admins
  # resources :users
  # resources :sessions

  # resources :sign_ins, only: [:new, :create, :index, :show]
  # resources :session, only: [:new, :create, :destroy]

  # get 'home/index'
  get 'home/job'
  get 'home/home'
  root 'home#index'
  

  # get "sign_in", to:"session#new"
  # post "sign_in", to:"session#create"

  delete "sign_out", to:"session#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
