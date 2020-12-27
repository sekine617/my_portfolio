require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "名前とメールアドレスとパスワードがあれば登録できる" do 
    expect(FactoryBot.create(:user)).to be_valid
  end 

  it "姓がなければ登録できない" do 
    expect(FactoryBot.build(:user, last_name: "")).to_not be_valid 
  end 

  it "名がなければ登録できない" do 
    expect(FactoryBot.build(:user, first_name: "")).to_not be_valid 
  end

  it "セイがなければ登録できない" do 
    expect(FactoryBot.build(:user, last_hurigana: "")).to_not be_valid 
  end

  it "メイがなければ登録できない" do 
    expect(FactoryBot.build(:user, first_hurigana: "")).to_not be_valid 
  end

  it "メールアドレスがなければ登録できない" do 
    expect(FactoryBot.build(:user, email: "")).to_not be_valid 
  end 

  it "メールアドレスが重複していたら登録できない" do 
    user1 = FactoryBot.create(:user,last_name: "山田", email: "taro@example.com")
    expect(FactoryBot.build(:user, last_name: "矢又", email: user1.email)).to_not be_valid
  end 

  it "パスワードがなければ登録できない" do 
    expect(FactoryBot.build(:user, password: "")).to_not be_valid 
  end 

  it "パスワードが暗号化されているか" do 
    user = FactoryBot.create(:user)
    expect(user.password_digest).to_not eq "12345678"
  end 

  it "password_confirmationとpasswordが異なる場合保存できない" do 
    expect(FactoryBot.build(:user,password: "12345678",password_confirmation: "12345678")).to_not be_valid 
  end 
end
