class Order < ApplicationRecord

  belongs_to :user
  belongs_to :product # you can add this line to the order serializer once it is created
  
end


