Rails.application.routes.draw do
  devise_for :users

  get "pages/dashboard", to: "pages#dashboard"

  root "groups#index"
  resources :groups
  
end
