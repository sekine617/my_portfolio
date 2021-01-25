class OrdersController < ApplicationController
  before_action :set_order

  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    render :new if @order.invalid?
    @order.order_products.build
  end

  def complete
    # @order_products = OrderProduct.all
  end

  def create
    if params[:back]
      redirect_to new_order_path
    else
      binding.pry
      Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_SECRET_KEY] 
       Payjp::Charge.create(
      amount: order_params[:total_price],
      card: params['payjp-token'],
      currency: 'jpy'
    )
      @order = Order.new(order_params)
      @order.user_id = current_user.id
      if @order.save
        current_cart.destroy
        render :complete
      else 
        render :new
      end
    end
  end

  private

  def order_params
    params.require(:order).permit(:receipt_date,
                                  :receipt_time,
                                  :postcode,
                                  :prefecture_code,
                                  :address_city,
                                  :address_street,
                                  :address_building,
                                  :total_price,
                                  order_products_attributes: %i[
                                    price
                                    product_id
                                    shop_id
                                    quantity
                                  ])
  end

  def set_order
    @cart_items = current_cart.cart_items
    @total_price = 0
    @cart_items.each do |cart_item|
      @total_price += cart_item.product.price.to_i * cart_item.quantity
    end
    @today = Date.current
    @days_array = []
    (1..14).each do |i|
      @days_array.push({ id: (@today + i.day), name: (@today + i.day).strftime('%-m月 %-d日') })
    end
  end
end
