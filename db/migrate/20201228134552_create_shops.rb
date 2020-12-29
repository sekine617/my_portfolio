class CreateShops < ActiveRecord::Migration[5.2]
  def change
    drop_table :shops
  end
end
