class Category < ActiveRecord::Base
  has_many :categories_movies
  has_many :movies, through: :categories_movies
end
