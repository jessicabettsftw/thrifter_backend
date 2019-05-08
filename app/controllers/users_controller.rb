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
      # name = params[:image_name]
      # base64 = params[:image]
      # body = Base64.decode64(base64.split(',')[1])
      #
      # # Create the object to upload
      # obj = S3_BUCKET.object(name).put(
      #   body: body,
      #   # acl: 'public-read',
      #   content_type: 'image/jpeg',
      #   content_encoding: 'base64'
      # )
      # @user = User.update(image: S3_BUCKET.object(name).presigned_url(:get))
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
