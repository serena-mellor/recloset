class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item
  belongs_to :review
end
