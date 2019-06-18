Rails.application.routes.draw do
  get 'user_movies/',  to: "user_movies#index", as: "user_movies"
  # get 'user_movies/:id',  to: "user_movies#show", as: "user_movie"
  get 'user_movies/:movie_id/new',  to: "user_movies#new", as: "user_movies_new"
  post 'user_movies/:movie_id', to: "user_movies#create"
  get 'user_movies/:id/edit',  to: "user_movies#edit", as: "edit_user_movie"
  patch 'user_movies/:id',  to: "user_movies#update"
  delete 'user_movies/:id', to: "user_movies#destroy", as: "user_movie"
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
