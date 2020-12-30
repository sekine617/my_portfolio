class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_secure_password
  has_many :likes, dependent: :destroy
  #has_many :like_products, through: :likes, source: :product

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

  def already_liked?(product)
    self.likes.exists?(product_id: product.id)
  end
end
