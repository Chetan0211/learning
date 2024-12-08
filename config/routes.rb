Rails.application.routes.draw do
  require 'sidekiq/web'
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "ping_user"=> "home#ping_user", as: :ping_user
  # Defines the root path route ("/")
  root "home#index"
end
