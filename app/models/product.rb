class Product < ApplicationRecord
  # mount_uploader :image, ImageUploader
  belongs_to :shop
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_many :product_category_relations, dependent: :destroy
  has_many :category, through: :product_category_relations

  def avg_score
    if reviews.empty?
      0.0
    else
      reviews.average(:rate).round(1).to_f
    end
  end

  def review_score_percentage
    if reviews.empty?
      0.0
    else
      reviews.average(:rate).round(1).to_f * 100 / 5
    end
  end

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
