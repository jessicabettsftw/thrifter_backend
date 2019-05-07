class UsersSerializer < ActiveModel::Serializer
  attributes :username, :image, :bio, :zip, :id
end
