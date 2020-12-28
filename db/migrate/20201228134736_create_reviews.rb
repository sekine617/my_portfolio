class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true, null: false
      t.references :shop, foreign_key: true, null: false
      t.string :comment, null: false
      t.integer :rate, null: false

      t.timestamps
    end
  end
end
