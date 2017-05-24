class Stamp < ApplicationRecord
  has_many :category_stamp
  has_many :carted_products
  has_many :orders, through: :carted_products


  def tax
    price * 0.05
  end

  def total 
    price + tax
  end

end


