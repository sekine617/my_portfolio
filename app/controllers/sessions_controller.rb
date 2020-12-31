class SessionsController < ApplicationController
  def new
  end
  
  def create
   user = User.find_by(email: params[:session][:email])
   if user && user.authenticate(params[:session][:password])
    session[:user_id] = user.id
    redirect_to mypage_path
   else
    render 'home/index'
   end
  end

  def destroy
   session.delete(:user_id)
   redirect_to root_path
  end

  def shop_create
    shop = Shop.find_by(email: params[:session][:email])
    if shop && shop.authenticate(params[:session][:password])
     session[:shop_id] = shop.id
     redirect_to mypage_path
    else
     render 'shop/me'
    end
   end
 
   def shop_destroy
    session.delete(:shop_id)
    redirect_to root_path
   end

end
