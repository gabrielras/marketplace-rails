class OrderSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :total_value, :status
end
