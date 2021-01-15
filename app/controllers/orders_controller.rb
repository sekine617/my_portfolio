class OrdersController < ApplicationController
  #include CartsController
  before_action :set_order
  before_action :permit_params, except: :index
  
  def index
    session.delete(:order)
    @order = Order.new
  end

  def confirm
    @order = Order.new(@order_params)
    @order.user_id = current_user.id
    session[:order] = @order
    #binding.pry
    if @order.invalid?
      binding.pry
      #render :index
      redirect_to orders_confirm_path
    else
      redirect_to orders_confirm_path
    end
  end

  def back
    @order = Order.new(session[:order])
    session.delete(:order)
    render :index
  end

  def complete
    Order.create!(session[:order])
		session.delete(:order)
  end

  private

  def permit_params
    @order_params = params
    .permit(:user_id, :receipt_date, :receipt_time, :postcode, :prefecture_code, :address_city, :address_street, :address_building)
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
