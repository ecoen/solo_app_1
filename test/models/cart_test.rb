require 'test_helper'

class CartTest < ActiveSupport::TestCase

	test "test for property"  do
		cart = Cart.new
		product = Product.new
		product.name = "test product"
		product.price = 10.00
		product.description = "test description"
		product.numberavailable = 2
		product.imageurl = "/imageurl"
		cart.add_to_cart(product)
		assert cart.get_items.count == 1
	end
end
		
	