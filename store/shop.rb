require "./inventory"
require "./shopping_cart"

class Shop

  def initialize
    @shopping_cart = ShoppingCart.new
    @inventory = Inventory.new

  end

  def what_is_in_store

    @inventory.show_inventory
  end

  def shop_for_item
    what_is_in_store

    puts "select your item by using the id number"
    name = gets.chomp

    product = @inventory.get_product name

    @shopping_cart.put_in_cart(product)
    shop_more
  end

  def shop_more
    puts "Dou you want do buy anything else? Y/N"
    choice = gets.chomp

    while choice == "Y"
      shop_for_item
    end

    @shopping_cart.pay
  end
end
