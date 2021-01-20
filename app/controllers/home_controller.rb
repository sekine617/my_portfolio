class HomeController < ApplicationController
  def index
    @latest_products = Product.all.order(id: "DESC").limit(3)
    @popular_products_all = Product.includes(:order_products).sort {|a,b| b.order_products.size <=> a.order_products.size}
    @popular_products = @popular_products_all[0..2]
  end
end
