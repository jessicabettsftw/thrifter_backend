class FindsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @finds = Find.all
    render json: @finds
  end

  def show
    @find = Find.find_by(id: params[:id])
    render json: @find
  end

  def user_finds
    @finds = Find.where(user_id: params[:user_id])
    render json: @finds
  end

  def create
    @find = Find.create(find_params)
    if @find.valid?
      render json: @find
    end
  end

  def update
    @find = Find.find_by(id: params[:id])
    @find.update(find_params)
    if @find.valid?
      render json: @find
    end
  end

  def destroy
    @find = Find.find_by(id: params[:id])
    @find.destroy
  end

  private

  def find_params
    params.require(:find).permit(:user_id, :store_id, :photo, :price, :brand, :description)
  end

end
