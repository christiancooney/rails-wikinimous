class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params_create)
    redirect_to article_path(@article)
  end

  def edit
     @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params_update)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, status: :see_other
  end


  private

  def article_params_create
    params.require(:article).permit(:title, :content)
  end

  def article_params_update
    params.require(:article).permit(:title, :content)
  end

end
