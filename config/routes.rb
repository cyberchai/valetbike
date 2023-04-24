Rails.application.routes.draw do
  root to: "pages#home"
  #root "rentals#new"
  
  #get "/stations/:identification", to: "stations#main"
  get "stations", to: "stations#main", as:"stations"
  #get "/stations/:identifier", to: "station#reverse", as: "station_rev"

  # hsm mods
  get "/bikes/unlock", to: "bikes#unlock"
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"


  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  get "user_home", to: "users#show"
  post 'login', to: 'sessions#create'


  delete "logout", to: "sessions#destroy"

  get '/users/:id', to: 'users#menu', as: 'user'
  get "user/show"
  get 'return', to: 'rentals#return'
  
  # payment page info
  get "payment", to:'payment#new' # testing
  get "bikes", to: "bikes#index" # testing
  get '/bikes/return', to: "bikes#return"
  match'ride',to:"bikes#index", via: :get
  resources :bikes, only: [:index]
  resources :stations, only: [:main, :show]
  resources :users, except: [:new]
  resources :rentals, only: [:new, :create]
  resources :rentals, only: [:return]

end
