class LikesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @likes = Like.all
    render json: @likes
  end

  def user_likes
    @likes = Like.where(user_id: params[:user_id])
    render json: @likes
  end

  def create
    @like = Like.create(like_params)
    render json: @like
  end

  def delete
    @like = Like.find_by(user_id: params[:user_id], find_id: params[:find_id])
    @like.destroy
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :find_id)
  end
end
