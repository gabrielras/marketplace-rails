class ProductCategory < ApplicationRecord
  belongs_to :profile
  has_many :product_rents

  validates_associated :profile
  validates :title, presence: true
end
