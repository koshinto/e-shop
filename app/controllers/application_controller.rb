class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  helper_method :current_cart

  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
      @cart
    end
  end

  protected

  def configure_permitted_parameters
    attributes = [:first_name, :last_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
