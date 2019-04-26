class StoresController < ApplicationController

  def index
    @stores = Store.all
    render json: @stores
  end

  def show
    @store = Store.find_by(name: params[:name])
  end

  def create
    @store = User.create(store_params)
    if @store.valid?
      render json: @store
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :phone_number, :street, :city, :state, :zip)
  end



end
