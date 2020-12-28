class Shop < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :products, dependent: :destroy
end
