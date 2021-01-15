class Order < ApplicationRecord
    belongs_to :user
    belongs_to :product
    has_many :order_products
    accepts_nested_attributes_for :order_products, allow_destroy: true
end
