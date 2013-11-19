class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    puts params
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find_by_id(params[:id])
  end
end
