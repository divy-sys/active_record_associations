class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  def index 
    @articles = Article.all
  end

  def show

  end

  def new 
    @article = Article.new
  end
  def create 
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path
  end
  
  def edit 

  end

  def update 
    @article.update(article_params)
    redirect_to people_path
  end

  def destroy 
    @article.destroy 
    redirect_to article_path 
  end

  private 
  def find_
  def 
end