class Stamp < ApplicationRecord
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  has_many :category_stamp
  has_many :categories, through: :category_stamp

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, presence: true
  validates :description, length: { maximum: 500 }


  def tax
    price * 0.05
  end

  def total 
    price + tax
  end

end


