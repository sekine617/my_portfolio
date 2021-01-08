FactoryBot.define do
  factory :order do
    quantity { "MyString" }
    product { "" }
    receipt_date { "2021-01-07" }
    receipt { "2021-01-07 13:53:08" }
  end
end
