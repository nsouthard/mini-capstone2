class Stamp < ApplicationRecord

  def tax
    price * 0.05
  end

  def total 
    price + tax
  end

end


