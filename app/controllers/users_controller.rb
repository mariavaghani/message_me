class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Hi, #{@user.username}! Welcome to the chatroom, make yourself comfortable"
      redirect_to chatroom_path
    else
      render 'new'
    end
  end

  def destroy

  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
