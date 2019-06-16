Rails.application.routes.draw do
  # get 'movies/index', to: "movies#index", as: "movies_path"
  # get 'movies/new'
  # get 'movies/show'
  # get 'movies/edit'
  resources :movies
  devise_for :users
  get "/home", to: "home#index"
  root to: "home#index"
  # For details on the rails DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
