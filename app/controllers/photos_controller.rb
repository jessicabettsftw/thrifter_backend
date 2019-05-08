require 'aws-sdk-s3';
require 'base64';

class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authorized, only: [:upload_file]

  def upload_file
    s3 = S3_BUCKET

    file = '/Users/jekka/Desktop/simple.png'
    bucket = 'serialthrifterimages'

    # Get just the file name
    name = File.basename(file)

    name = params[:name]
    base64 = params[:file]
    body = Base64.decode64(base64.split(',')[1])

    # Create the object to upload
    obj = s3.object(name).put(
      body: body,
      # acl: 'public-read',
      content_type: 'image/jpeg',
      content_encoding: 'base64'
    )
    render json: {public_url: s3.object(name).presigned_url(:get)}
  end

end
