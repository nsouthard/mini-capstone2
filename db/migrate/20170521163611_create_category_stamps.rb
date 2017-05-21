class CreateCategoryStamps < ActiveRecord::Migration[5.1]
  def change
    create_table :category_stamps do |t|
      t.integer :category_id
      t.integer :stamp_id

      t.timestamps
    end
  end
end
