class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[show like review order_history]
  def show
    @user = current_user
  end

  def like
    user = current_user
    @likes = Like.where(user_id: user.id)
  end

  def review
    user = current_user
    @reviews = Review.where(user_id: user.id)
  end

  def order_history; end
end
