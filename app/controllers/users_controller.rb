class UsersController < ApplicationController
#  before_action :move_to_index, except: [:index, :show]

  def index
    @users = User.includes(:user).order("created_at DESC")
    @messages = @group.messages.includes(:user)
  end

  def show
    @users = User.find(params[:id])
  end


end
