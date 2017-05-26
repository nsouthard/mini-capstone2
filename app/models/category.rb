class Category < ApplicationRecord
  has_many :category_stamp
  has_many :stamps, through: :category_stamp

  validates :name, uniqueness: true
end
