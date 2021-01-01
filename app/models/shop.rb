class Shop < ApplicationRecord
  has_many :products, dependent: :destroy
  has_secure_password validations: true

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end

  validates :mail, presence: true, uniqueness: true
end
