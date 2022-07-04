class UsersController < ApplicationController
  before_action :get_user
  def new
    @user = User.new
  end

  def show
    @user = get_user 
  end

  def create 
    @user = User.new(params[:user]) # Not the final implementation!
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private 
  def get_user 
    @user = User.find_by(id: params[:id])
    @user
  end
end
