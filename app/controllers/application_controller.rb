class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order
  
  def current_order
    if cookies[:order_id].nil?
      Order.new
    else
      Order.find(cookies[:order_id])
    end
  end
end
