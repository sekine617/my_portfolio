require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'バリデーション' do

    it "名がない場合、無効であること" do
      user = FactoryBot.build(:user, first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("が入力されていません。")
    end

    it "姓がない場合、無効であること" do
      user = FactoryBot.build(:user, last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("が入力されていません。")
    end
end
