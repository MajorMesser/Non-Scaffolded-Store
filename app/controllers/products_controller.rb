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
    @product = Product.new(whitelisted_params)
    if (@product.save)
      redirect_to @product # redirect to the show for this product
    else
      render :new
    end
  end
  # No associated view.
  # If product saves, we redirect to the show
  # If validations fail, we render the view associated with the new action

  private
  def whitelisted_params
    params.require(:product).permit(:name, :description, :price)
  end

end
