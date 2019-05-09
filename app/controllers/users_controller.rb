class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authorized, only: [:create]

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

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UsersSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    # @user.update(password: params[:user][:password], bio: params[:user][:bio], email: params[:user][:email], image: params[:user][:image], zip: params[:user][:zip])
    render json: @user
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:password, :username, :email, :zip, :bio, :image)
  end


end
