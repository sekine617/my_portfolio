class OrdersController < ApplicationController
  before_action :set_order

  
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    binding.pry
    if @order.invalid?
      render :new
    end
  end


  def back
    render :new
  end

  def complete
    #Order.create!(session[:order])
		#session.delete(:order)
  end


  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    binding.pry
    render :new and return if params[:back] || !@order.save
    redirect_to orders_complete_path

  end

  private

  def order_params
    params.require(:order).permit(:receipt_date, :receipt_time, :postcode, :prefecture_code, :address_city, :address_street, :address_building)
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
      @days_array.push({:id => (@today + i.day), :name => (@today + i.day).strftime("%m月 %d日")})
    end
  end

end
