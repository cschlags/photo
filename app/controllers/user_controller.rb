class UserController < ApplicationController
  def create
    @user = User.create( user_params )
  end
  def index
    User.all
  end
  private
  def user_params
    params.require(:user).permit(:avatar)
  end
end
