class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by_id(params[:id])
    relevant_posts = []
    Post.find_each do |post|
      if post.category_id == @category.id
        relevant_posts << post
      end
    end
    @posts = relevant_posts
  end
end