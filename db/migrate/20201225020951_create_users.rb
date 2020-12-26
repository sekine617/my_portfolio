class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :last_hurigana, null: false
      t.string :first_hurigana, null: false
      t.string :password_digest, null: false
      t.string :email, null: false

      t.timestamps
      add_index :users, :email, unique: true
    end
  end
end
