class UsersController < ApplicationController
  before_action :set_user_id, only: [:show]

  def index
    @users = User.includes(:user).order("created_at DESC")
    @messages = @group.messages.includes(:user)
  end

  def show
  end

  private
  def set_user_id
    @users = User.find(params[:id])
  end



end
