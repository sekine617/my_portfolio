class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :rate, presence: true
  validates :comment, presence: true

  def review_rate_percentage
    rate.to_f * 100 / 5
  end
end
