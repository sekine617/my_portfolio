class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_products, through: :likes, source: :product
  has_many :carts, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :last_name, presence: true

  validates :first_name, presence: true

  validates :last_hurigana,
            presence: true,
            format: {
              with: /\A[\p{katakana}\p{blank}ー－]+\z/,
              message: 'はカタカナで入力して下さい。'
            }

  validates :first_hurigana,
            presence: true,
            format: {
              with: /\A[\p{katakana}\p{blank}ー－]+\z/,
              message: 'はカタカナで入力して下さい。'
            }

  validates :password,
            presence: true,
            length: { minimum: 6 }

  validates :email,
            presence: true,
            uniqueness: true

  def already_liked?(product)
    likes.exists?(product_id: product.id)
  end
end
