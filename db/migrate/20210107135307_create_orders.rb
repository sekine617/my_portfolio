class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :address, null: false
      t.date :receipt_date, null: false
      t.time :receipt_time, null: false

      t.timestamps
    end
  end
end
