class AddImageToStamps < ActiveRecord::Migration[5.1]
  def change
    add_column :stamps, :image, :string
  end
end
