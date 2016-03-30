class UsersController < ApplicationController
  # NHO: Would be careful with how you implement user Auth; looks like you are handrolling and using devise
  # Probably would only want to use one or the other.

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to users_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    redirect_to root_url unless @current_user == @user
  end

  def update
    @user = User.find(params[:id])
    redirect_to root_url unless @current_user == @user
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password) # NHO: looks like there are more fields on a user model than just these 2
  end

end
