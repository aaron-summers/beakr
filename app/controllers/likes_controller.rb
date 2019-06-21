class LikesController < ApplicationController
  before_action :find_like, only: [:destroy]

  def new
    @like = Like.new(like_params)
  end

  def create
    like = Like.create like_params
    redirect_to page_path(like.page)
   end

   def destroy
    #page.likes.where(user_id: current_user).destroy_all
    @like.destroy
    redirect_to pages_path
  end

  private

  def find_like
    @like = Like.find params[:id]
  end

  def like_params
    params.require(:like).permit(:user_id, :page_id)
  end

  def page
    @page ||= Page.find(params[:id])
  end
end
