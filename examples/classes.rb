class Product
  attr_reader :name       #makes sure that you can acces the info (read-only)
  def initialize(name)
    @name = name          #@name is instance variable, so only usable inside the class
  end

end

class Catalogue
  def initialize
    @list = []
  end

  def print_list
    @list.each_with_index do |product, index|
      puts "#{index + 1}. #{product.name}"
    
  end

  def add_product(product)
    @list << product
  end
end

catalogue = Catalogue.new

banana = Product.new("banana")
strawberry = Product.new("strawberry")
pineapple = Product.new("pineapple")

catalogue.add_product banana
catalogue.add_product strawberry
catalogue.add_product pineapple

catalogue.print_list
