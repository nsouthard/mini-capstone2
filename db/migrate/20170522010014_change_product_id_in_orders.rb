class ChangeProductIdInOrders < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :product_id, :stamp_id
  end
end
