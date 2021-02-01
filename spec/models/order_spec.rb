require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'バリデーション' do
    it "郵便番号がない場合、無効であること" do
      order = FactoryBot.build(:order, postcode: nil)
      order.valid?
      expect(order.errors[:postcode]).to include("が入力されていません。")
    end

    it "都道府県がない場合、無効であること" do
      order = FactoryBot.build(:order, prefecture_code: nil)
      order.valid?
      expect(order.errors[:prefecture_code]).to include("が入力されていません。")
    end

    it "市区町村がない場合、無効であること" do
      order = FactoryBot.build(:order, address_city: nil)
      order.valid?
      expect(order.errors[:address_city]).to include("が入力されていません。")
    end

    it "番地がない場合、無効であること" do
      order = FactoryBot.build(:order, address_street: nil)
      order.valid?
      expect(order.errors[:address_street]).to include("が入力されていません。")
    end

    it "受取日がない場合、無効であること" do
      order = FactoryBot.build(:order, receipt_date: nil)
      order.valid?
      expect(order.errors[:receipt_date]).to include("が入力されていません。")
    end

    it "受け取り時間がない場合、無効であること" do
      order = FactoryBot.build(:order, receipt_time: nil)
      order.valid?
      expect(order.errors[:receipt_time]).to include("が入力されていません。")
    end
  end


end
