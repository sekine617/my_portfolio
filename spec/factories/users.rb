FactoryBot.define do
  factory :user do
    sequence(:last_name) { '山田' }
    sequence(:first_name) { '太郎' }
    sequence(:last_hurigana) { 'ヤマダ' }
    sequence(:first_hurigana) { 'タロウ' }
    sequence(:email) { |n| "TEST#{n}@email.com" }
    sequence(:password) { '12345678' }
  end
end
