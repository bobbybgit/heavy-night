Rails.application.routes.draw do
  resources :locations
  resources :play_sessions
  resources :attendances
  resources :collections
  resources :venues
  resources :event_settings
  resources :memberships
  resources :events
  devise_for :users

  get "pages/dashboard", to: "pages#dashboard"

  root "groups#index"
  resources :groups
  
end
