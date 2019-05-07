class FindsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def upload_file
    @s3_direct_post = S3_BUCKET.presigned_post(key: "profile/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end

end
