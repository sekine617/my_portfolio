class HomeController < ApplicationController
  def index
    @latest_products = Product.all.order(id: "DESC").limit(3)
  end
end
