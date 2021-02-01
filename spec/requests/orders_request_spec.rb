require 'rails_helper'

RSpec.describe 'Orders', type: :request do
   before do 
    @user = FactoryBot.build(:user)
  end
  
  describe '正常' do
    context "注文内容を入力する" do
      it "入力できること" do
        get "/orders/new"
        expect(response).to have_http_status(200)
          post "/orders/confirm", params: { order: FactoryBot.attributes_for(:order) }
          follow_redirect!
        expect(response.body).to include "注文内容確認"
      end
    end
  end

  describe '異常' do
    context "注文内容を入力する" do
      it "エラーメッセージが表示されること" do
        get "/orders/new"
        expect(response).to have_http_status(200)
        post "/orders/confirm", params: { order: { receipt_date: '' } }
        expect(response.body).not_to include "注文内容確認"
      end
    end
  end
end
