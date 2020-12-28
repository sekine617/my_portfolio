class ProductsController < ApplicationController
  def index
    @products = params[:tag_id].present? ? Tag.find(params[:tag_id]).products : Product.all
    @products = @products.page(params[:page])
  end

  def new
    @product = Product.new(flash[:product])
  end
end
