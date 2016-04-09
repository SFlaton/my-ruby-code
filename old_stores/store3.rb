@inventory = {}
@cart = ""
@total_cart_value = 0.0

def build_inventory
  add_to_inventory("cats", 10, 20)
  add_to_inventory("dogs", 5, 50)
  add_to_inventory("fish", 50, 2)
end

def add_to_inventory(product, quantity, price)
  @inventory[product] = {
    "quantity" => quantity,
    "price" => price
  }
end

def show_inventory
    puts "The inventory holds:

    #{@inventory}
    "
end

def in_stock?(product, quantity = 1)
  @inventory[product] && @inventory[product]["quantity"] >= quantity
end

def show_contents_of_the_cart
  puts "Your cart holds:

  #{@cart}

  Total cart value: €#{@total_cart_value}"
end

def add_to_cart(product, amount)
  purchase = "  • #{amount} #{product}\n"
  @cart << purchase

  cost_per_item = @inventory[product]["price"]
  @total_cart_value += (cost_per_item * amount)

  @inventory[product]["quantity"] -= amount
end

def pay
	puts "You need to pay €#{@total_cart_value}. How much do you want to pay?"
	money = gets.chomp.to_i
	@total_cart_value -= money
	puts "You paid €#{money}. This makes the total cart value: €#{@total_cart_value}.
	Thank you."

  if @total_cart_value > 0
    puts "you haven't paid your full bill"
    return pay
  else
    puts "Thank you for your payment. Your package will be shipped"
  end
end


def costumer
	puts "Hi! Welcome to our store! This is our inventory!
	What would you like to buy?"
	purchase = gets.chomp

  if in_stock?(purchase)
    puts "How many #{purchase} would you like to buy then?"
    amount = gets.chomp.to_i
    if in_stock?(purchase, amount)
      add_to_cart(purchase, amount)

      show_contents_of_the_cart
    end
  else
    puts "We're fresh out of #{purchase}, sorry!"
  end
end

build_inventory
show_inventory
costumer

puts "Would you like to buy something more?
		1) yes
		2) no
		"
	more = gets.chomp.to_i

	if more == 2
		pay
	elsif more == 1
		costumer
	else
		puts "please choose again! You can only choose 1 or 2."
	end
