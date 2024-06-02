Rails.application.routes.draw do
  get 'work/index'
  get 'work/choose_theme'
  get 'work/display_theme'
  resources :users
  get 'main/index'
  get 'main/help'
  get 'main/about'
  root 'main#index'
  namespace :api, defaults: { format: :json } do
    # We are going to list our resources here
    #   resources :users
      
      match 'next_image',       to: 'api#next_image',   via: 'get'
      match 'prev_image',       to: 'api#prev_image',   via: 'get'
      match 'save_value',       to: 'api#save_value',   via: :get

  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
