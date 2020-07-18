class PostsController < ApplicationController

#=========================共通メソッド=========================#

  #ログインしていない場合の処理
  before_action :move_to_index, except: [:show]

#=========================アクション=========================#

  #新規投稿（GET）
  def new
    @posts = Post.new
  end

  #投稿詳細（GET）
  def show
    @posts = Post.find(params[:id])
    @post =  Post.includes(:user)
    @comment = Comment.new
    @comments = @posts.comments.includes(:user).order("created_at DESC")
   
  end

  #投稿を保存する処理（POST）
  def create
    @posts = Post.new(post_params)
    if @posts.save
      
    else
      redirect_to new_post_path
    end
  end

  #投稿を削除する処理（POST）
  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy
    redirect_to root_path
  end

  #投稿編集画面（GET）  
  def edit
    @posts = Post.find(params[:id])
  end

  #投稿を編集する処理（POST）    
  def update
    @posts = Post.find(params[:id])
    @posts.update(post_params)
    redirect_to root_path
  end

  #投稿を検索する処理（GET）
  def search
    @posts = Post.search(params[:keyword]).order("created_at DESC")
  end


  #=========================プライベートメソッド=========================#

  #ストロングパラメータ          
  private
  def post_params
    params.require(:post).permit(:title, :category, :content, :image, :rate).merge(user_id: current_user.id)
  end

  #ログインしていない場合「indexアクション」に飛ばす。      
  def move_to_index
    redirect_to controller: 'users', action: 'index' unless user_signed_in?
  end

end