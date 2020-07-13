class UsersController < ApplicationController

#=========================共通メソッド=========================#

  #指定したアクションは全て、user_idを受け取る。
  before_action :set_user_id, only: [:show]

  #ログインしていない場合の処理
  before_action :move_to_index, except: [:index, :show]

#=========================アクション=========================#

  #トップページ(GET)
  def index
    if user_signed_in?
      redirect_to controller: 'users', action: 'show', id: current_user.id
    end
  end

  #マイページ(GET)
  def show
  end

  #=========================プライベートメソッド=========================#
  
  #IDを受け取る
  private
  def set_user_id
     @users = User.find(params[:id])
     #binding.pry
  end

  #ログインしていない場合、indexに飛ばす。
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
