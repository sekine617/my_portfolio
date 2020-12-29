class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :image, null: false
      t.text :description, null: false
      t.references :shop, foreign_key: true
      t.integer :quantity_per_day, null: false

      t.timestamps
    end
  end
end
