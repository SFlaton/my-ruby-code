
@total_price = 0.0

def add_to_price(price, quantity)
	@total_price += (price * quantity)
end


puts add_to_price(5, 4)

