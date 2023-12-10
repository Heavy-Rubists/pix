Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.


  get "up" => "rails/health#show", as: :rails_health_check
  root "registration#new"
  # Defines the root path route ("/")
  #root "posts#index"

  resources :confirmation do
    member do
      get :confirm_email
    end
  end

  resources :registration, only: [:new, :create]
  resources :home, only: [:index]

  # or it can be
  # get "/registration", to: "registration#new"
  # post "/registration", to: "registration#create"
  #
  get "/login", to: "login#new"
  post "/login", to: "login#create"
  delete "logout", to: "login#destroy"
  get "/feed", to: "feed#new"
  get "/registration", to: "registration#new"
  get "/upload", to: "upload#new"
  post "/upload", to: "upload#create"
end
