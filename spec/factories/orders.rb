FactoryBot.define do
  factory :order do
    #quantity { '1' }
    postcode { '11111' }
    prefecture_code { '11' }
    address_city { 'city' }
    address_street { 'street' }
    receipt_date { '2021-01-07' }
    receipt_time { 1 }
  end
end
