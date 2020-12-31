class ProductsController < ApplicationController
  def index
    #@products = params[:tag_id].present? ? Tag.find(params[:tag_id]).products : Product.all
    @products = @results.page(params[:page])
  end

  def new
    @product = Product.new(flash[:product])
  end

  def create
    product = Product.new(product_params)
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
    @product = Product.find(params[:id])
    binding.pry
    @review = Review.new
    @reviews = @product.reviews.limit(5)
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :image, :description, :shop_id, :quantity_per_day, category_ids: [])
  end

end
