Rails.application.routes.draw do

  resources :visits
  resources :trips
  resources :comments
  resources :attractions
  resources :locations
  #api engaged-travels.com/api/v1/resource

  namespace :api do
    namespace :v1 do
      resources :locations
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
