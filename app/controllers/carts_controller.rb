class CartsController < ApplicationController
  before_action :setup_cart_item!,   only: [:add_item, :update_item, :delete_item]
  before_action :is_this_your_cart?, only: :show

  def show
    @cart_items = current_cart.cart_items
  end

  def add_item
    if @cart_item.blank?
      @cart_item = current_cart.cart_items.build(product_id: params[:product_id])
    end

    @cart_item.quantity += params[:cart][:quantity].to_i
    @cart_item.save
    redirect_to current_cart
  end

  def update_item
    @cart_item.update(quantity: params[:cart_item][:quantity].to_i)
    redirect_to current_cart
  end

  def delete_item
    @cart_item.delete
    redirect_to current_cart
  end

  private

  def setup_cart_item!
    @cart_item = current_cart.cart_items.find_by(product_id: params[:product_id])
  end

  def is_this_your_cart?
    redirect_to cart_path(current_cart.id) unless request.url == cart_url(current_cart.id)
  end
end