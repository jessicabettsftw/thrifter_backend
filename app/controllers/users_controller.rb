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
    name = params[:user][:name]
    base64 = params[:user][:file]
    body = Base64.decode64(base64.split(',')[1])

    # Create the object to upload
    obj = S3_BUCKET.object(name).put(
      body: body,
      # acl: 'public-read',
      content_type: 'image/jpeg',
      content_encoding: 'base64'
    )
    @user = User.create(username: params[:user][:username], image: S3_BUCKET.object(name).presigned_url(:get), password: params[:user][:password], email: params[:user][:email])
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UsersSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(password: params[:password], bio: params[:bio], email: params[:email], image: params[:image], zip: params[:zip])
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
