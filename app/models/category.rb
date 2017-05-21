class Category < ApplicationRecord
  has_many :category_stamp
  has_many :products, through: :category_stamp
end
