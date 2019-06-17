class UserMoviesController < ApplicationController
  # before_action :set_movie
  before_action :set_user_movie, only: [:show, :edit, :update, :destroy]
  def index
    @user_movies = current_user.user_movies
  end

  def show
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @user_movie = current_user.user_movies.new
  end

  def create
    @user_movie = current_user.user_movies.new(user_movie_params)
    @user_movie.movie_id = params[:movie_id]
    if @user_movie.save
      redirect_to user_movies_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_user_movie
    @user_movie = current_user.user_movies.find(params[:id])
  end

  # def set_movie
    
  # end

  def user_movie_params
    params.require(:user_movie).permit(:status)
  end
end
