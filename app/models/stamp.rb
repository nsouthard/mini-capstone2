class Stamp < ApplicationRecord
  has_many :orders
  has_many :category_stamp
  has_many :categories, through: :category_stamp

  def tax
    price * 0.05
  end

  def total 
    price + tax
  end

end


