MoviesApp::Application.routes.draw do

  # Home page
  root "movies#index"

  resources :users
  resources :sessions
  resources :genres

  get "/movies/new" => 'movies#new', as: 'movie_new'
  get "/genres/new" => 'genres#new', as: 'genre_new'

  # get "/user/new" => 'users#new', as: 'signup'
  get "/login" => 'sessions#new', as: 'login'
  get "/logout" => "sessions#destroy", as: 'logout'

  # Movie resource
  resources :movies
  resources :directors
  resources :actors
  resources :reviews

  



end
