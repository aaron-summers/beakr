class LikesController < ApplicationController

  def new
    @like = Like.new(like_params)
  end

  def create
    like = Like.create like_params
      redirect_to user_path(@user)
   end

  private

  def find_like
    @like = Like.find params[:id]
  end

  def like_params
    params.require(:like).permit(:user_id, :page_id)
  end
end
