class OrdersController < ApplicationController
  #include CartsController
  
  def index
    session.delete(:order)
    @order = Order.new
    @cart_items = current_cart.cart_items
    @total_price = 0
      @cart_items.each do |cart_item|
        @total_price += cart_item.product.price.to_i * cart_item.quantity
      end
    @today = Time.current.at_beginning_of_day
    @days = []
    14.times do |i|
      @days.push((@today + i.day).at_end_of_day.to_s(:date_jp))
    end
  end

  def confirm
    binding.pry
    @order = Order.new(order_params)
    session[:order] = @order
    if @order.invalid?
      render :index
    end
  end

  def back
    @order = Order.new(session[:order])
    session.delete(:order)
    render :index
  end

  def complete
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :address, :receipt_date, :receipt_time)
  end

end
