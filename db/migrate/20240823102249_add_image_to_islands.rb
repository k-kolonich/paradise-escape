class AddImageToIslands < ActiveRecord::Migration[7.1]
  def change
    add_column :islands, :image, :string
  end
end
