FactoryBot.define do
  factory :user do
    last_name { "MyString" }
    first_name { "MyString" }
    last_hurigana { "MyString" }
    first_hurigana { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end
end
