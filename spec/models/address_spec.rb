require 'rails_helper'

RSpec.describe Address, type: :model do
  it "郵便番号がない場合、無効であること" do
      order = FactoryBot.build(:edit_address, postcode: nil)
      order.valid?
      expect(order.errors[:postcode]).to include("が入力されていません。")
    end

    it "都道府県がない場合、無効であること" do
      order = FactoryBot.build(:edit_address, prefecture_code: nil)
      order.valid?
      expect(order.errors[:prefecture_code]).to include("が入力されていません。")
    end

    it "市区町村がない場合、無効であること" do
      order = FactoryBot.build(:edit_address, address_city: nil)
      order.valid?
      expect(order.errors[:address_city]).to include("が入力されていません。")
    end

    it "番地がない場合、無効であること" do
      order = FactoryBot.build(:edit_address, address_street: nil)
      order.valid?
      expect(order.errors[:address_street]).to include("が入力されていません。")
    end

end
