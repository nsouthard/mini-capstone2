class CategoryStamp < ApplicationRecord
  belongs_to :stamp
  belongs_to :category
end
