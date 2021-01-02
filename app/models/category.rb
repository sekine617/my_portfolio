class Category < ApplicationRecord
  has_many :product_category_relations, dependent: :destroy
  has_many :products, through: :product_category_relations
end
