require 'rails_helper'

RSpec.describe Product, type: :model do
   describe 'バリデーション' do
    it "商品名がない場合、無効であること" do
      product = FactoryBot.build(:product, name: nil)
      product.valid?
      expect(product.errors[:name]).to include("が入力されていません。")
    end

    it "価格がない場合、無効であること" do
      product = FactoryBot.build(:product, price: nil)
      product.valid?
      expect(product.errors[:price]).to include("が入力されていません。")
    end

    it "商品画像がない場合、無効であること" do
      product = FactoryBot.build(:product, image: nil)
      product.valid?
      expect(product.errors[:image]).to include("が入力されていません。")
    end

    it "商品説明がない場合、無効であること" do
      product = FactoryBot.build(:product, description: nil)
      product.valid?
      expect(product.errors[:description]).to include("が入力されていません。")
    end

    it "1日の提供数がない場合、無効であること" do
      product = FactoryBot.build(:product, quantity_per_day: nil)
      product.valid?
      expect(product.errors[:quantity_per_day]).to include("が入力されていません。")
    end

    it "価格が数字でない場合、無効であること" do
      product = FactoryBot.build(:product, price: '数字')
      product.valid?
      expect(product.errors[:price]).to include("は数値で入力してください")
    end

    it "1日の提供数が数字でない場合、無効であること" do
      product = FactoryBot.build(:product, quantity_per_day: '数字')
      product.valid?
      expect(product.errors[:quantity_per_day]).to include("は数値で入力してください")
    end

  end
end
