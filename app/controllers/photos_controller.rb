class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authorized, only: [:upload_file]

  def upload_file
    # obj = S3_BUCKET.object
    # obj.put
    byebug
    @s3_direct_post = S3_BUCKET.presigned_post(key: "profile/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
    @s3_direct_post.public_url
    ##to save to DB
  end

end
