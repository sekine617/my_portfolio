class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index; end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = 'レビューを投稿しました'
      redirect_to @review.product
    else
      redirect_back fallback_location: @review.product, flash: {
        review: @review,
        error_messages: @review.errors.full_messages
      }
    end
  end

  def show
    @review = Review.new(product_id: @product.id)
  end

  private

  def review_params
    params.require(:review).permit(:product_id, :rate, :comment)
  end
end
