Rails.application.routes.draw do
  resources :ads
  devise_for :users
  root "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
