class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new(comment_params)
  end

  def create
    comment = Comment.create comment_params
    redirect_to comment_path(comment.page)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :page_id)
  end
end
