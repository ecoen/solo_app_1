class Cart 
  attr_reader :items
  
  def initialize
    @items = []
  end
  
  def add_to_cart(product)
    @items << product
  end

  def clear
   @items.clear
  end

  def get_items
  	@items
  end

end
