class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new(comment_params)
  end

  def create
    comment = Comment.create comment_params
    redirect_to page_path(comment.page)
  end

  def edit
  end

  def show
  end

  def update
    @comment.update comment_params
    redirect_to page_path(@comment.page)
  end

  def destroy
    @comment.destroy
    redirect_to page_path(@comment.page)
  end


  private

  def find_comment
    @comment = Comment.find params[:id]
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :page_id)
  end
end
