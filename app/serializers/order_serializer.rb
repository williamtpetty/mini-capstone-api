class OrderSerializer < ActiveModel::Serializer
  attributes :user_id, :subtotal, :tax, :total
  # may need to add  :product, back into attributes to get front end to work
end

