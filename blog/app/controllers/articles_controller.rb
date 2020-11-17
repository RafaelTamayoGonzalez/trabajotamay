class ArticlesController < ApplicationController
def new
  @article = Article.new
  @article.title = "Demo"
end

def create
  @article = Article.create(title: params[:article][:title])
  render json: @article
end

def index
  @articles = Article.all
end

def show
  @article = Article.find(params[:id])
end

def edit
  @article = Article.find(params[:id])


end

def article_params
  params.require(:article).permit(:title, :status)
end

def update
  @article = Article.find(params[:id])
  @article.update(
      title: params[:article][:title],
      status: params[:article][:status]
  )
  redirect_to root_path
  #alan dijo

end

def destroy
  @article = Article.find(params[:id])
  @article.destroy
  redirect_to root_path
end

end
