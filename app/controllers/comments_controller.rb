class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(params.require(:comment).permit(:comment, :commentable_id, :commentable_type))

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @movie, notice: 'User was successfully created.' }
        format.js {}
        format.json { render json: @movie, status: :created, location: @movie }
      else
        format.html { render action: "new" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end
end
