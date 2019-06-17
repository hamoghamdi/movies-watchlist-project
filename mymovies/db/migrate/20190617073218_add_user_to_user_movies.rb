class AddUserToUserMovies < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_movies, :user, foreign_key: true
  end
end
