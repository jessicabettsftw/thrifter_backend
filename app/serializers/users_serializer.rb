class UsersSerializer < ActiveModel::Serializer
  attributes :username, :image, :bio, :zip, :email, :password
end