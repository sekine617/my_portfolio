class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[show like review order_history edit update]
  def show
    @user = User.find(current_user.id)
    @address = Address.find_by(user_id: current_user.id)
  end

  def edit
  end

  def update
    @address = Address.find_by(user_id: current_user.id)
    if @address.present?
      @address.user_id = current_user.id
      @address.update(address_params)
      flash[:notice] = '住所を登録しました。'
      redirect_to mypage_path
    else
      @address = Address.new(address_params)
      @address.user_id = current_user.id
      if @address.save
        flash[:notice] = '住所を変更しました。'
        redirect_to mypage_path
      else
        binding.pry
        #redirect_back fallback_location: @user., flash: {
        #review: @review,
        #error_messages: @review.errors.full_messages
      #}
      end
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
  def address_params
    params.permit(:postcode, :prefecture_code, :address_city, :address_street, :address_building)
  end
end
