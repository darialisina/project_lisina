Rails.application.routes.draw do
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  resources :themes
  resources :images
  resources :values
  resources :user_ts
  resources :users
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  match 'work', to: 'work#index', via: :get
  match 'choose_theme', to: 'work#choose_theme', via: :get
  match 'display_theme', to: 'work#display_theme', via: :post
  match 'results_list',     to: 'work#results_list', via: :get

  root 'work#index'

  namespace :api, defaults: { format: :json } do
    match 'next_image',       to: 'api#next_image',   via: 'get'
    match 'prev_image',       to: 'api#prev_image',   via: 'get'
    match 'save_value',       to: 'api#save_value',   via: :get
  end

  match 'signup',   to: 'users#new',            via: 'get'
  match 'signin',   to: 'sessions#new',         via: 'get'
  match 'signout',  to: 'sessions#destroy',     via: 'delete'
  resources :sessions, only: [:new, :create, :destroy]
  
end