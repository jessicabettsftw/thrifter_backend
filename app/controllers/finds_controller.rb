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
    name = params[:find][:name]
    base64 = params[:find][:file]
    body = Base64.decode64(base64.split(',')[1])

    # Create the object to upload
    obj = S3_BUCKET.object(name).put(
      body: body,
      # acl: 'public-read',
      content_type: 'image/jpeg',
      content_encoding: 'base64'
    )
    # :user_id, :store_id, :photo, :price, :brand, :description
    @find = Find.create(user_id: params[:find][:user_id],
      store_id: params[:find][:user_id], photo: image: S3_BUCKET.object(name).presigned_url(:get),
       brand: params[:find][:brand], description: params[:find][:description])
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
