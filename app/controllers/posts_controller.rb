class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find_by_id(params[:id])
    @category = Category.find_by_id(@post.category_id)
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.update(params[:id], params[:post])
    if @post
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @category = Category.find_by_id(@post.category_id)
    Post.destroy(params[:id])
    redirect_to '/'
  end
end
