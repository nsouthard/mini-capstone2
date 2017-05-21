class CreateStamps < ActiveRecord::Migration[5.1]
  def change
    create_table :stamps do |t|
      t.string :name
      t.string :year
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
