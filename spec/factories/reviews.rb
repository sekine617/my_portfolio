FactoryBot.define do
  factory :review do
    user { nil }
    product { nil }
    comment { 'MyString' }
    rate { 1 }
  end
end
