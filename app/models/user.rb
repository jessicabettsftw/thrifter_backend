class User < ApplicationRecord
  has_many :finds
  has_many :likes
end
