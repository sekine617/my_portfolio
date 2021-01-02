module SessionsHelper
  def current_shop
    remember_token = Shop.encrypt(cookies[:shop_remember_token])
    @current_shop ||= Shop.find_by(remember_token: remember_token)
  end

  def sign_in(shop)
    remember_token = Shop.new_remember_token
    cookies.permanent[:shop_remember_token] = remember_token
    shop.update!(remember_token: Shop.encrypt(remember_token))
    @current_shop = shop
  end

  def sign_out
    @current_shop = nil
    cookies.delete(:shop_remember_token)
  end

  def signed_in?
    @current_shop.present?
  end

  private

  def require_sign_in!
    redirect_to shops_login_path unless signed_in?
  end
end
