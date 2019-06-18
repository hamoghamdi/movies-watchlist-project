class UserMoviesController < ApplicationController
  before_action :set_user_movie, only: [:edit, :update, :destroy]

  def index
    @user_movies = current_user.user_movies
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @user_movie = current_user.user_movies.new(movie_id: @movie.id)
    if current_user.user_movies.find_by(movie_id: @movie.id)
      redirect_to user_movies_path
    end
  end

  def create
    @user_movie = current_user.user_movies.new(user_movie_params)
    if @user_movie.save
      redirect_to user_movies_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
    if @user_movie.update(user_movie_params)
      redirect_to user_movies_path
    else
      render 'edit'
    end
    
  end

  def destroy
    @user_movie.destroy
    redirect_to user_movies_path
  end

  private 

  def set_user_movie
    @user_movie = current_user.user_movies.find(params[:id])
  end

  def user_movie_params
    params.require(:user_movie).permit(:status, :movie_id)
  end
end
