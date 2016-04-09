
class CartValue
  attr_reader :shopping_cart

  def initialize
    @cart_value = 0.0
  end

  def show_cart_value
    puts "Your current cart value is:

    #{@cart_value}
    "
  end

  def add_to_cart_value(product)
    @cart_value += product.price
    show_cart_value
  end

end
