class ShopController < ApplicationController
    def new
        @shop = Shop.new(flash[:shop])
    end

    def create
        shop = Shop.new(shop_params)
        if shop.save
          session[:shop_id] = shop.id
          redirect_to mypage_path
        else 
          redirect_back fallback_location: root_path,
          flash: {
            shop: shop,
            error_messages: shop.errors.full_messages
          }
      end

      def me
      end

      private

  def shop_params
    params.require(:shop).permit(:last_name, :email)
  end
end
