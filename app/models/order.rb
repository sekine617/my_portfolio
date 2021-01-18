class Order < ApplicationRecord
  belongs_to :user
  # belongs_to :product
  has_many :order_products, dependent: :destroy
  accepts_nested_attributes_for :order_products, allow_destroy: true
  include JpPrefecture
  jp_prefecture :prefecture_code

  validates :receipt_date, presence: true
  validates :receipt_time, presence: true
  validates :postcode, presence: true
  validates :prefecture_code, presence: true
  validates :address_city, presence: true
  validates :address_street, presence: true

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
