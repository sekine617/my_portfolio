class Shop < ApplicationRecord
  has_many :products, dependent: :destroy
  has_secure_password validations: true
  has_many :order_products, dependent: :destroy

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end

  validates :email, presence: true, uniqueness: true
end
