class ProductRent < ApplicationRecord
  belongs_to :product_category
  has_many :order_product
  has_one_attached :image


  validates_associated :product_category
  validates :name, presence: true
  validates :price, presence: true

end
