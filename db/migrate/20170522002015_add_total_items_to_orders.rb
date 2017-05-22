class AddTotalItemsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :subtotal, :decimal, precision: 10, scale: 2
    add_column :orders, :tax, :decimal, precision: 10, scale: 2
    add_column :orders, :total, :decimal, precision: 10, scale: 2
  end
end
