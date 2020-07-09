class PostsController < ApplicationController

  def new
    @posts = Post.new
  end

  def show
  end


  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to root_path
    else
      redirect_to new_post_path
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :category, :content).merge(user_id: current_user.id)
  end 

end