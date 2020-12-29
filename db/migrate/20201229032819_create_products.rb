class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.text :description
      t.references :shop, foreign_key: true
      t.integer :quantity_per_day

      t.timestamps
    end
  end
end
