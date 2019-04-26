class LikesController < ApplicationController
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

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
  end

  private

  def like_params
    require(:likes).permit(:user_id, :find_id)
  end
end
