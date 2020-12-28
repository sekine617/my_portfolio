# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  last_name       :string(255)      not null
#  first_name      :string(255)      not null
#  last_furigana   :string(255)      not null
#  first_hurigana  :string(255)      not null
#  password_digest :string(255)      not null
#  email           :string(255)      not null
#  phone_number    :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_secure_password

  validates :last_name, presence: true

  validates :first_name, presence: true

  validates :last_hurigana,
            presence: true,
            format: {
              with: /\A[\p{katakana}\p{blank}ー－]+\z/,
              message: 'はカタカナで入力して下さい'
            }

  validates :first_hurigana,
            presence: true,
            format: {
              with: /\A[\p{katakana}\p{blank}ー－]+\z/,
              message: 'はカタカナで入力して下さい'
            }

  validates :password,
            length: { minimum: 8 }

  validates :email,
            presence: true,
            uniqueness: true
end
