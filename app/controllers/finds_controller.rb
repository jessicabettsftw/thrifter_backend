class FindsController < ApplicationController
  def index
    @finds = Find.all
    render json: @finds
  end

  def show
    @find = Find.find_by(id: params[:id])
    render json: @find
  end

  def create
    @find = Find.create(find_params)
    if @find.valid?
      render json: @find
    end
  end

  def update
    @find = Trainer.find_by(id: params[:id])
    @find.update(find_params)
    if @find.valid?
      render json: @find
    end
  end

  def destroy
    @find = Trainer.find_by(id: params[:id])
    @find.destroy
  end

  private

  def find_params
    require(:find).permit(:user_id, :store_id, :photo, :price, :brand, :description)
  end

end