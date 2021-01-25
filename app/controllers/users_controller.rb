class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[show like review order_history]
  def show
    @user = current_user
  end

  def like
    @likes = Like.where(user_id: current_user.id)
  end

  def review
    @reviews = Review.where(user_id: current_user.id)
  end

  def order_history
    @orders = Order.where(user_id: current_user.id).order(id: "DESC")
    @orders = @orders.page(params[:page]).per(5)
  end

end
