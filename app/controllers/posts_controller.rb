class PostsController < ApplicationController

  def new
    @posts = Post.new
  end
  
  def show
    @posts = Post.find(params[:id])
  end


  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to root_path
    else
      redirect_to new_post_path
    end
  end

  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy
    redirect_to root_path
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    @posts = Post.find(params[:id])
    @posts.update(post_params)
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :category, :content).merge(user_id: current_user.id)
  end 

end