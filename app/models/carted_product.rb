class CartedProduct < ApplicationRecord
  belongs_to :order
  belongs_to :user
  belongs_to :order, optional: true
end
