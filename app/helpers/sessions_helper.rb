module SessionsHelper
    def current_user?(user)
        user == current_user
      end

      def logged_in?
        !current_user.nil?
      end

      def current_shop?(shop)
        shop == current_shop
      end

      def logged_in_shop?
        !current_shop.nil?
      end
end
