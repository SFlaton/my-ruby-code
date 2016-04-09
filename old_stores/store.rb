@total_price = 0
@cat = 0
@dog = 0
@fish = 0
@catsamount = 10
@dogsamount = 5
@fishamount = 50


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
		if  @catsamount >= 1 
			puts "Your choice is Cats. This will cost you 20 coins."
			@total_price += 20
			@cat += 1
			@catsamount -= 1
		else
			puts "Sorry, the cats are sold out"
		end
		
	elsif choice == 2
		if @dogsamount >= 1
			puts "Your choice is Dogs. This will cost you 50 coins"
			@total_price += 50
			@dog += 1
			@dogsamount-= 1
		else
			puts "Sorry, the dogs are sold out"
		end
		
	elsif choice == 3
		if @fishamount >= 1
			puts "Your choice is Fish. It is your lucky day! Fish are on sale for only 2 coins today!"
			@total_price += 2
			@fish += 1
			@fishamount -= 1
		else 
			puts "Sorry, the fish are sold out"
		end
	
	else 
		puts "I'm sorry, we don't have that today."
	end 

	puts "Your cart now holds:
		Cats =  #{@cat}
		Dogs =  #{@dog}
		Fish =  #{@fish}
		"
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