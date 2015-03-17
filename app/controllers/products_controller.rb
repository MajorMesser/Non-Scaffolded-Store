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
    if (@product.save)
      redirect_to @product # redirect to the show for this product
    else
      render text: @product.errors.inspect
    end
  end

  private
  def whitelisted_params
    params[:product].require(:product).permit(:name, :description, :price)
  end

end
