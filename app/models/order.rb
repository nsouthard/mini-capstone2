class Order < ApplicationRecord
belongs_to :stamp, optional: true
belongs_to :user

has_many :carted_products
has_many :stamps, through: :carted_products



  # def calculate_subtotal
  #   subtotal = 0
  #   order.carted_products.each do |carted_products|
  #     self.subtotal += carted_product.stamp.price * carted_product.quantity
  #   end
  # end

  # def calculate_tax
  #   self.tax = subtotal * 0.09
  # end

  # def calculate_total
  #   self.total = subtotal + tax
  # end

end
