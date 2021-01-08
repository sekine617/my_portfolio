class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :quantity
      t.references :product
      t.date :receipt_date
      t.time :receipt

      t.timestamps
    end
  end
end
