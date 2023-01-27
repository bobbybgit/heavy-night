Rails.application.routes.draw do
  resources :event_settings
  resources :memberships
  resources :events
  devise_for :users

  get "pages/dashboard", to: "pages#dashboard"

  root "groups#index"
  resources :groups
  
end
