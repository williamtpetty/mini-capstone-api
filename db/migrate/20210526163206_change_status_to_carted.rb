class ChangeStatusToCarted < ActiveRecord::Migration[6.1]
  def change
    change_column_default :carted_products, :status, "carted"
  end
end
