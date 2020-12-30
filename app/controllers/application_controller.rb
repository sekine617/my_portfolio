class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :set_search
  include SessionsHelper

  private

  def current_user
    return unless session[:user_id]
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in_user
    unless logged_in?
      redirect_to login_url
    end
  end

  def set_search
    @search = Product.ransack(params[:q])
    @results = @search.result
  end
end
