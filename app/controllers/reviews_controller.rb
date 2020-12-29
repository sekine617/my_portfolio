class ReviewsController < ApplicationController
  def index
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = 'レビューを投稿しました'
      redirect_to product_reviews_path(@review.product)
    else 
      redirect_to :back, flash: {
        review: @review,
        error_messages: @review.errors.full_messages
      }
      end
  end

  private
  def review_params
    params.require(:review).permit(:product_id, :rate, :comment)
  end
end
