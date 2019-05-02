class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    if @user.valid?
      render json: @user
    end
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
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
    @user.update(password: params[:password], bio: params[:bio], email: params[:email], image: params[:image], name: params[:name], zip: params[:zip])
    render json: @user
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :username, :email, :zip, :bio, :image)
  end


end
