require "./product"

class Inventory

  def initialize
    @products = []

      @products << Product.new("Blue ring", "Rings", 5.00, "1", 3)
      @products << Product.new("Red ring", "Rings", 5.00, "2", 3)
      @products << Product.new("Purple ring", "Rings", 5.00, "3", 3)
      @products << Product.new("Pink ring", "Rings", 5.00, "4", 3)
  end

  def show_inventory
    puts "Hi! welcome to our store! This is what we have on offer today:"
    puts "*" * 40

    @products.each do |product|
      puts "name: #{product.name}"
      puts "category: #{product.description}"
      puts "price: #{product.price}"
      puts "id number: #{product.id}"
      puts "amount in stock: #{product.amount}"
      puts "*" * 40
    end
  end

  def get_product product_name
    @products.each do |product|
        if product.id == product_name
          return  product
        end
    end
    "ow no its not here"
  end
end
