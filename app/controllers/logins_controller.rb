class LoginsController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def login
    @login = current_user.id
  end
 
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
