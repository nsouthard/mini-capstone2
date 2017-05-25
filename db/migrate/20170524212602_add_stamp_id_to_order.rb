class AddStampIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :stamp_id, :integer
  end
end
