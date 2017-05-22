class AddTotalsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :stamps, :subtotal, :decimal, precision: 10, scale: 2
    add_column :stamps, :tax, :decimal, precision: 10, scale: 2
    add_column :stamps, :total, :decimal, precision: 10, scale: 2
  end
end
