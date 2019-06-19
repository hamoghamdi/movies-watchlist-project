class User < ApplicationRecord
  has_many :user_movies, dependent: :destroy
  has_many :movies, :through => :user_movies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
