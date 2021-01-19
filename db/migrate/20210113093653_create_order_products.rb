class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.references :shop, foreign_key: true
      t.integer :quantity, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
