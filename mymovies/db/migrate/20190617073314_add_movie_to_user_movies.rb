class AddMovieToUserMovies < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_movies, :movie, foreign_key: true
  end
end
