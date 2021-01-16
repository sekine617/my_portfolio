class ProductsController < ApplicationController
  before_action :set_tags
  def index
    @product = Product.all
    if params[:tag_name]
      @tag_results = Product.tagged_with(params[:tag_name])
      @products = @tag_results.page(params[:page])
    else
    @products = @results.page(params[:page])
    end
  end

  def new
    @product = Product.new(flash[:product])
  end

  def create
    product = Product.new(product_params)
    binding.pry
    if product.save
      flash[:notice] = "「#{product.name}」を作成しました"
      redirect_to product
    else
      redirect_to :back, flash: {
        product: product,
        error_messages: product.errors.full_messages
      }
    end
  end

  def show
    @cart = Cart.new
    @product = Product.find(params[:id])
    @review = Review.new
    @reviews = @product.reviews.limit(5)
  end

  private

  def set_tags
    @tags = ActsAsTaggableOn::Tag.all
  end

  def product_params
    params.require(:product).permit(:name, :price, :image, :description, :shop_id, :quantity_per_day, :tag_list, tag_list: [])
  end
end
