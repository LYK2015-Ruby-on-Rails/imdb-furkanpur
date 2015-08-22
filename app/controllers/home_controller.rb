class HomeController < ApplicationController
  def index
    @categories = Category.all
  end

  def latest_movies
    @movies = Movie.last(12)
  end

  def show_all
    @movies = Movie.all
  end

  def top_rated
    @movies = Movie.order('rating').first(12)
  end
end
