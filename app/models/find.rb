class Find < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_many :likes 
end
