class UsersController < ApplicationController
before_action :logged_in_user, only:[:me]
  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path
    else 
      redirect_back fallback_location: root_path,
      flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
  end
end

  def me
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_hurigana, :first_hurigana, :password, :password_confirmation, :email)
  end
end

