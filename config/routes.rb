Rails.application.routes.draw do
  get "users/show"
  devise_for :users

  root "events#index"

  resources :events, only: [ :index, :new, :create, :show ]
  resources :users, only: [ :show ]

  get "events/index"

  get "up" => "rails/health#show", as: :rails_health_check
end
