Rails.application.routes.draw do
  get 'user_movies/index',  to: "user_movies#index", as: "user_movies"
  # get 'user_movies/show',  to: "user_movies#show", as: "user_movie"
  get 'user_movies/new/:movie_id',  to: "user_movies#new", as: "user_movies_new"
  post 'user_movies/create/:movie_id', to: "user_movies#create"
  get 'user_movies/edit/:id',  to: "user_movies#edit", as: "edit_user_movie"
  patch 'user_movies/update/:id',  to: "user_movies#update"
  delete 'user_movies/destroy/:id', to: "user_movies#destroy"
  # get 'movies/index', to: "movies#index", as: "movies"
  # get 'movies/new'
  # get 'movies/show'
  # get 'movies/edit'
  resources :movies
  devise_for :users
  get "/home", to: "home#index"
  root to: "home#index"
  # For details on the rails DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
