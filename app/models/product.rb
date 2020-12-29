class Product < ApplicationRecord
  belongs_to :shop
  has_many :reviews, dependent: :destroy

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
end
