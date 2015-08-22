class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @comment = Comment.new
    @comments = @movie.comments.all
  end
end
