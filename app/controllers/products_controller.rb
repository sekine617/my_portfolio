class ProductsController < ApplicationController

  def index
    #@products = params[:tag_id].present? ? Tag.find(params[:tag_id]).products : Product.all
    @products = @results.page(params[:page])
  end

  def new
    @product = Product.new(flash[:product])
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
    @reviews = @product.reviews.limit(5)
  end


end
