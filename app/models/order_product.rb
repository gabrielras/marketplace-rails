class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product_rent

  validates_associated :order
  validates_associated :product_rent
  validates :quantity, presence: true
end
