class Order < ApplicationRecord
belongs_to :user
has_many :carted_products
has_many :stamp, through: :carted_products



  def calculate_subtotal
    self.subtotal = stamp.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

end
