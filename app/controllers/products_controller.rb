class ProductsController < ApplicationController
  before_action :set_search

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

  private

  def set_search
    @search = Product.ransack(params[:q])
    @results = @search.result
  end
end
