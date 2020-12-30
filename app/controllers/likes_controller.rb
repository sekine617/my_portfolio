class LikesController < ApplicationController
    before_action :logged_in_user
    #before_action :set_like

    # def create
    #     user = @current_user
    #     product = Product.find(params[:product_id])
    #     like = Like.create(user_id: user.id, product_id: product.id)
    # end
    # def destroy
    #     user = @current_user
    #     product = Product.find(params[:product_id])
    #     like = Like.find_by(user_id: user.id, product_id: product.id)
    #     like.delete
    # end


    def create
        @like = @current_user.likes.create(product_id: params[:product_id])
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
        @product = Product.find(params[:product_id])
        @like = @current_user.likes.find_by(product_id: @product.id)
        @like.destroy
        redirect_back(fallback_location: root_path)
      end

    private
    # def set_like
    #     @product = Product.find(params[:product_id])
    #     @like = current_user.likes.find_by(product_id: @product.id)
    # end
end
