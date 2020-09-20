class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :product_rents
end
