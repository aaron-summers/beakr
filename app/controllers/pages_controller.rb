class PagesController < ApplicationController
  before_action :find_page, only: [:show, :edit, :update, :destroy]

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

  def edit
  end

  def show
  end

  def update
    @page.update page_params
    redirect_to page_path(@page)
  end

  def destroy
    @page.destroy
    redirect_to pages_path
  end

  private

  def find_page
    @page = Page.find params[:id]
  end

  def page_params
    params.require(:page).permit(:title, :content, :imgurl)
  end
end
