class Order < ApplicationRecord
belongs_to :stamp, optional: true
belongs_to :user

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
