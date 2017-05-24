class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :stamp
  belongs_to :order, optional: :true
end
