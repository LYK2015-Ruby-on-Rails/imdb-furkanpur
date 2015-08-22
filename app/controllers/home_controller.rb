class HomeController < ApplicationController
  def index
    @categories = Category.all
  end

  def latest_movies
    @movies = Movie.last(5)
  end
end
