class RemoveTotalsFromStamps < ActiveRecord::Migration[5.1]
  def change
    remove_column :stamps, :subtotal, :decimal, precision: 10, scale: 2
    remove_column :stamps, :tax, :decimal, precision: 10, scale: 2
    remove_column :stamps, :total, :decimal, precision: 10, scale: 2
  end
end
