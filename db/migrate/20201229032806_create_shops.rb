class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :opening_hours
      t.string :address

      t.timestamps
    end
  end
end
