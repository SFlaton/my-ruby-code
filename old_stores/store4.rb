@shopping_cart = []
@inventory = [
  {:name => "rings", :price => 30.0, :in_stock => 10},
  {:name => "necklaces", :price => 50.0, :in_stock => 5},
  {:name => "bracelets", :price => 40.0, :in_stock => 10},
]

def show_inventory

  @inventory.each do |product|
    puts "Product: #{product[:name]}"
    puts "Price: #{product[:price]}"
    puts "In stock: #{product[:in_stock]}"
    puts "*" * 40
  end
  select_product
end

def add_to_shopping_cart(product)

end


def select_product
	puts "Hi! Welcome to our store! This is our inventory!
	What would you like to buy?"
	gets.chomp

  # puts "How many #{product} would you like to buy then?"
  # amount = gets.chomp.to_i

end

def look_up_product(product_name)
  @inventory.each do |product|
    if product[:name] == product_name
      add_to_shopping_cart(product)
    end
    product_name = select_product
end

show_inventory
