class CartsController < ApplicationController
  before_action :setup_cart_item, only: %i[add_item update_item delete_item]

  def show
    @cart_items = current_cart.cart_items
    @total_price = 0
    @cart_items.each do |cart_item|
      @total_price += cart_item.product.price.to_i * cart_item.quantity
    end
  end

  def add_item
    @cart_item = current_cart.cart_items.build(product_id: params[:product_id]) if @cart_item.blank?
    @cart_item.quantity += params[:quantity].to_i
    @cart_item.save
    flash[:notice] = 'カートに追加しました'
    redirect_back fallback_location: @cart_item.product
  end

  def update_item
    @cart_item.update(quantity: params[:quantity].to_i)
    redirect_back fallback_location: carts_path
  end

  def delete_item
    @cart_item.destroy
    redirect_back fallback_location: carts_path
  end

  private

  def setup_cart_item
    @cart_item = current_cart.cart_items.find_by(product_id: params[:product_id])
  end
end
