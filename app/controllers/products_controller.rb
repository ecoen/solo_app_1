class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def show
  	@product = Product.find(params[:id])
  end

  def index
  	@products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    flash[:success] = "Product updated"
    redirect_to @product
  end
  
  def create
    @product = Product.new(product_params)    # Not the final implementation!
    if @product.save
      flash[:success] = "Product Saved!"
      redirect_to @product
    else
      render 'new'
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :numberavailable, :imageurl)
    end
end
