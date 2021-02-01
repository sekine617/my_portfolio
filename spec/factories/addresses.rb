FactoryBot.define do
  factory :address do
    postcode { 1 }
    prefecture_code { 1 }
    address_city { "MyString" }
    address_street { "MyString" }
    address_building { "MyString" }
    user { nil }
  end
end
