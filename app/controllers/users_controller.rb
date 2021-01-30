class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[show like review order_history edit update]
  def show
    @user = User.find(current_user.id)
    binding.pry
  end

  def edit
  end

  def update
    @user = User.find(current_user.id)
    binding.pry
    if @user.valid?
      binding.pry
      @user.update(user_params)
      redirect_to mypage_path
    else
      render :edit
    end
  end

  def like
    @likes = Like.where(user_id: current_user.id)
  end

  def review
    @reviews = Review.where(user_id: current_user.id)
  end

  def order_history
    @orders = Order.where(user_id: current_user.id).order(id: 'DESC')
    @orders = @orders.page(params[:page]).per(5)
  end

  private
  def user_params
    params.permit(:postcode, :prefecture_code, :address_city, :address_street, :address_building)
  end
end
