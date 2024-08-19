class CreateIslands < ActiveRecord::Migration[7.1]
  def change
    create_table :islands do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
