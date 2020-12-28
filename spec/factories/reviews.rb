FactoryBot.define do
  factory :review do
    user { nil }
    shop { nil }
    comment { "MyString" }
    rate { 1 }
  end
end
