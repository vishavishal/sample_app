class UsersController < ApplicationController
  before_action :get_user
  def new
    @user = User.new
  end

  def show
    @user = get_user 
  end

  def create 
    @user = User.new(user_params) # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private 
  def get_user 
    @user = User.find_by(id: params[:id])
    @user
  end

  def user_params 
    params.require(:user).permit(:name, :email, :password,
      :password_confirmation)
  end
end
