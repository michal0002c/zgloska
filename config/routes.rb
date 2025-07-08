Rails.application.routes.draw do
  get "users/settings"
  resources :ads
  devise_for :users
  root "home#index"
  get '/settings', to: 'users#settings', as: :settings
  get "up" => "rails/health#show", as: :rails_health_check
end
