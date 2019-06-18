class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    page = Page.create page_params
    redirect_to page
  end

  def show
    @page = Page.find params[:id]
  end

  private

  def page_params
    params.require(:page).permit(:title, :content, :imgurl)
  end
end
