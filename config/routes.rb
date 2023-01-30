Rails.application.routes.draw do
  resources :groups
  resources :locations
  resources :play_sessions
  resources :attendances
  resources :collections
  resources :venues
  resources :event_settings
  resources :events
  devise_for :users

  resources :groups do
   resources :memberships do
   end
  end

  

  get "pages/dashboard", to: "pages#dashboard"

  root "pages#dashboard"
  
  
end
