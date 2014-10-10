class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save # will check password confirmation
      # User has been created
      # Log them in automatically
      session[:user_id] = @user.id
      redirect_to root_url
    else
      # There's been an error
      render :new
    end
  end

  def index
    @users = User.all
  end

  def profile
    if current_user
      @user = current_user
    else
      redirect_to new_session_url, notice: 'You need to be logged in to access this page'
    end
  end

  private
  def user_params
    params.require(:user).permit(
          :email, :password, :password_confirmation)
  end
end
