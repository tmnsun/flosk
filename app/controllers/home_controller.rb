class HomeController < ApplicationController
  def index
    @users = User.all
    @news_categories = NewsCategory.all
    @news = @news_categories.first.news.limit(5)
    @articles = Article.limit(5)
  end
end
