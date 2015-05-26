Rails.application.routes.draw do
  resources :device_table_mappings
  resources :menus
  resources :categories
  root to: 'visitors#index'
  devise_for :users
  resources :users

  namespace :api do
  	namespace :v1 do
      resources :categories
      resources :menus
  	end
  end

end
