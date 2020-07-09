class PostsController < ApplicationController

  def new
    @posts = Post.new
  end

  def show
  end


  def create
    if Post.create(post_params)
      render 'show'
    else
      render 'new'
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :category, :content)
  end 

end