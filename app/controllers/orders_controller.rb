class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      # @orders = Order.all
      @orders = current_user.orders
      render :index
    else
      render json: {message: "You must be logged in to view your orders"}
    end
  end

  def create
    if current_user 
      carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)

      calculated_subtotal = 0
      carted_products.each do |carted_product|
        calculated_subtotal += carted_product.product.price * carted_product.quantity
      end
      calculated_tax = calculated_subtotal * 0.09
      calculated_total = calculated_subtotal + calculated_tax

      @order = Order.new(
        user_id: current_user.id,
        subtotal: calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total
      )
      @order.save
      carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
      carted_products.each do |carted_product|
        carted_product.status = 'purchased'
        carted_product.order_id = @order.id
        carted_product.save
      end
      render :show
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    if current_user.id == @order.user_id
      render :show
    else 
      render json: {message: "You must be logged in to view your orders"}
    end
  end
end