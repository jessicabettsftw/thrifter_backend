class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.valid?
      render json: @user
    end
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.valid?
      render json: @user
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :username, :email, :zip)
  end


end
