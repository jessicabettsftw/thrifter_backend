class User < ApplicationRecord
  has_many :finds
  has_many :likes

  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 16}
  validates :email, presence: true, uniqueness: true,
  validates :password, presence: true, length: {minimum: 6, maximum: 16}
end
