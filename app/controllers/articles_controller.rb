class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # @task = Task.create(task_params_create)
    # redirect_to task_path(@task)
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    # @task.update(task_params_update)
    # redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    # @article.destroy
    # redirect_to tasks_path, status: :see_other
  end


  private

  def article_params_create
    # params.require(:task).permit(:title, :details).with_defaults(completed: false)
  end

  def article_params_update
    # params.require(:task).permit(:title, :details, :completed)
  end

end
