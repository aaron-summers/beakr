class LikesController < ApplicationController

  def new
    @like = Like.new(like_params)
  end

  def create
    @like = Like.new(like_params)
    if @like.save
      redirect_to user_path(@user)
    else
      redirect_to article_path
    end
  end

  private

  def like_params
    params.require(:likes).permit(:user_id, :article_id)
  end
end
