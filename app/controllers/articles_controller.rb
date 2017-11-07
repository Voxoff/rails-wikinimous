class ArticlesController < ApplicationController
  def index  # GET /articles
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(getparams)
    @article.save
  end

  def edit
    @article = Article.new
  end

  def update

  end

  def destroy

  end

  private

  def getparams
    params.require(:article).permit(:title, :content)
  end
end
