class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.first
    render template: "products/show"
  end

  def show
    @product = Product.second
    render template: "products/show"
  end

  def show
    @product = Product.third
    render template: "products/show"
  end
end
