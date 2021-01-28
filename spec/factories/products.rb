FactoryBot.define do
  factory :product do
    name { 'ケーキ' }
    price { 500 }
    image { 'cake.jpg' }
    description { '説明文' }
    shop_id { 1 }
    quantity_per_day { 10 }
  end
end
