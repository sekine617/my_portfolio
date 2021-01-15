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

  include JpPrefecture
  jp_prefecture :prefecture_code

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

   def prefecture_name
      JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
   end
            
   def prefecture_name=(prefecture_name)
     self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
   end

  def already_liked?(product)
    likes.exists?(product_id: product.id)
  end
end
