class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def create
    @article = Article.create article_params
    redirect_to article_path(@article)
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show
  end

  def update
    @article.update article_params
    redirect_to article_path(@article)
  end

  def destroy
  end

  private

  def find_article
    @article = Article.find params[:id]
  end

  def article_params
    params.require(:article).permit(:name, :admin_id, :tag_id, :tag)
  end
end
