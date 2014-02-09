class ShopController < ApplicationController
  def index
	@products = Product.all
  end

 def add_to_cart
  @cart = get_cart
  @product = Product.find(params[:id])
  @product.imageurl = nil
  @cart.add_to_cart(@product)
end

def get_cart
  if session[:cart]
    return session[:cart]
  else
    session[:cart] = Cart.new
    return session[:cart]
  end
end

def clear_cart
  @cart = get_cart
  @cart.clear
end


	private 
		def product_params
			params.require(:product).permit(:name, :description, :price, 
				:numberavailable, :imageurl)
		end

		def cart_params
			params.requie(:cart)
		end
	end
