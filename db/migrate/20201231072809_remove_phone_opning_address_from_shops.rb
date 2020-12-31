class RemovePhoneOpningAddressFromShops < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :phone_number, :string
    remove_column :shops, :opening_hours, :string
    remove_column :shops, :address, :string
  end
end
