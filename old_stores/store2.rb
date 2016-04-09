@total_price = 0
@inventory = {}
@cart = ""
#@cat = 0
#@dog = 0
#@fish = 0
#@catsamount = 10
#@dogsamount = 5
#@fishamount = 50

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

def show_inventory
	puts "
	Hi! Welcome to our store!
	This is our Inventory today:

	1) Cats
	2) Dogs
	3) Fish


	Please make your choice [1-3]:
	"

	choice = gets.chomp.to_i

	if choice == 1
		if  in_stock? 
			puts "Your choice is Cats. This will cost you 20 coins."
			add_to_cart
			
		else
			puts "Sorry, the cats are sold out"
		end
		
	elsif choice == 2
		if in_stock?
			puts "Your choice is Dogs. This will cost you 50 coins"
			add_to_cart
		else
			puts "Sorry, the dogs are sold out"
		end
		
	elsif choice == 3
		if in_stock?
			puts "Your choice is Fish. It is your lucky day! Fish are on sale for only 2 coins today!"
			add_to_cart
		else 
			puts "Sorry, the fish are sold out"
		end
	
	else 
		puts "I'm sorry, we don't have that today."
	end 

	puts "This is now in your cart: 
		
		#{@cart}"

	puts "Your total price is now #{@total_price} coins"

	puts "Would you like to buy something more?
	1) yes
	2) no 
	"
	more = gets.chomp.to_i
	
	if more == 2
		puts "You will need to pay #{@total_price} coins"
	elsif more == 1
		show_inventory
	else
		puts "please choose again! You can only choose 1 or 2."
	end
		
end

show_inventory