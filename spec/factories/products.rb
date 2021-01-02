FactoryBot.define do
  factory :product do
    name { 'MyString' }
    price { 1 }
    image { 'MyString' }
    description { 'MyText' }
    shop { nil }
    quantity_per_day { 1 }
  end
end
