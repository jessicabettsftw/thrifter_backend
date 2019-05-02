class StoresController < ApplicationController

  def index
    @stores = Store.all
    render json: @stores
  end

  def show
    @store = Store.find(params[:id])
    render json: @store
  end

  def create
    @store = User.find_or_create_by(store_params)
    if @store.valid?
      render json: @store
    end
  end

  private

  def store_params
    params.require(:store).permit(
      :name
    , :phone_number
    , :zip
    , :street
    , :city
    , :state
    , :country
    , :latitude
    , :longitude
    , :rating)
  end



end
