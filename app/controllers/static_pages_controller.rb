class StaticPagesController < ApplicationController
  def home
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
