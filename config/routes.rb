Rails.application.routes.draw do
  root to: "users#create_user"
  
    # get "/stations/:identifier", to: "station#reverse", as: "station_rev"
  match'ride',to:"bikes#index", via: :get
  resources :bikes, only: [:index]
  resources :stations, only: [:index]
end
