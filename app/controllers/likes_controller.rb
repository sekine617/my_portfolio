class LikesController < ApplicationController
  before_action :set_like
  before_action :authenticate_user!, only: %i[create destroy]

  def create
    user = current_user
    product = Product.find(params[:product_id])
    like = Like.create(user_id: user.id, product_id: product.id)
  end

  def destroy
    user = current_user
    product = Product.find(params[:product_id])
    like = Like.find_by(user_id: user.id, product_id: product.id)
    like.delete
  end

  private

  def set_like
    @product = Product.find(params[:product_id])
  end
end
