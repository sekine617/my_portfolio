class Product < ApplicationRecord
  belongs_to :shop
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_many :product_category_relations, dependent: :destroy
  has_many :category, through: :product_category_relations
  

  def avg_score
    unless self.reviews.empty?
        reviews.average(:rate).round(1).to_f
    else
        0.0
    end
end

def review_score_percentage
    unless self.reviews.empty?
        reviews.average(:rate).round(1).to_f*100/5
    else
        0.0
    end
end

def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
