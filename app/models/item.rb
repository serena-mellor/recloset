class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :cover
  has_many :favourites
end
