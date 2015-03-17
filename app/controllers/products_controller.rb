class ProductsController < ApplicationController
  def index
    # Use the Product model to load all products.
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  # auto-loads: app/views/products/new.html.erb

  def create
    @product = Product.new(params[:product])
  end

end
