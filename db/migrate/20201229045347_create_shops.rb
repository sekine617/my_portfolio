class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :auth_id, null: false
      t.string :phone_number, null: false
      t.string :opening_hours, null: false
      t.string :address, null: false
      t.string :password_digest, null: false
      t.string :remember_token

      t.timestamps
    end
    add_index :shops, :email, unique: true
    add_index :shops, :auth_id, unique: true
  end
end
