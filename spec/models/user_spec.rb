require 'rails_helper'

RSpec.describe User, type: :model do
  before do 
    @user = build(:user)
  end

  describe 'バリデーション' do
    it '全ての値が入力されていること' do
      expect(@user.valid?).to eq(true)
    end

    it 'メールアドレスがない場合、無効であること' do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.valid?).to eq(false)
    end

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

    it "メイがない場合、無効であること" do
      user = FactoryBot.build(:user, first_hurigana: nil)
      user.valid?
      expect(user.errors[:first_hurigana]).to include("が入力されていません。")
    end

    it "セイがない場合、無効であること" do
      user = FactoryBot.build(:user, last_hurigana: nil)
      user.valid?
      expect(user.errors[:last_hurigana]).to include("が入力されていません。")
    end

    it "メールアドレスがない場合、無効であること"  do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("が入力されていません。")
    end

    it "パスワードがない場合、無効であること" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("が入力されていません。")
    end

    it "重複したメールアドレスの場合、無効であること" do
      user1 = FactoryBot.create(:user)
      user2 = FactoryBot.build(:user)
      user2.valid?
      expect(user2.errors[:email]).to eq([])
    end

    it "メイがカタカナでない場合、無効であること" do
      user = build(:user, first_hurigana: "たろう")
      user.valid?
      expect(user.errors[:first_hurigana]).to include("はカタカナで入力して下さい。")
    end

    it "セイがカタカナでない場合、無効であること" do
      user = build(:user, last_hurigana: "やまだ")
      user.valid?
      expect(user.errors[:last_hurigana]).to include("はカタカナで入力して下さい。")
    end
  end
end