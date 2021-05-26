class CartedProductSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :quantity, :status, :order_id, :product
end
