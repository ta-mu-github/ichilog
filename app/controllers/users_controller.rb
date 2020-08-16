class UsersController < ApplicationController

#=========================共通メソッド=========================#

  #指定したアクションは全て、user_idを受け取る。
  before_action :set_user_id, only: [:show]

  #ログインしていない場合の処理
  before_action :move_to_index, except: [:index, :show]

#=========================アクション=========================#

  #トップページ(GET)
  def index
    @user = User.new
    if user_signed_in?
      redirect_to controller: 'users', action: 'show', id: current_user.id
    end
  end

  #マイページ(GET)
  def show

  end

  #投稿を検索する処理（GET）
  def search
    @users = User.search(params[:keyword])
  end

  
  


  #=========================プライベートメソッド=========================#
  
  #IDを受け取る
  private
  def set_user_id
     @users = User.find(params[:id])
     @posts = Post.where(user_id: @users.id).order("created_at DESC")
  end

  #ログインしていない場合、indexに飛ばす。
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
