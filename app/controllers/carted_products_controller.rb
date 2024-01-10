class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render :index
  end

  def create
    @carted_products = CartedProduct.create(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id]

    )
  end
end
