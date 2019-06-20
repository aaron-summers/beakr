class TagsController < ApplicationController
  before_action :find_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.create tag_params
    redirect_to tag_path(@tag)
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def show
  end

  def update
    @tag.update tag_params
    redirect_to tag_path(@tag)
  end

  def destroy
  end

  private

  def find_tag
    @tag = Tag.find params[:id]
  end

  def tag_params
    params.require(:tag).permit(:name, page_ids: [])
  end
end
