require "./inventory"
class ShoppingCart
  attr_reader :shopping_cart

  def initialize
    @shopping_cart = []

  end

  def show_shopping_cart
    puts "Your shopping cart holds:"

    @shopping_cart.each do |product|
      puts product.describe
    end
  end

  def total_amount
    puts "Your total cart value is:"
    sum = 0.0
    @shopping_cart.each do |product|
      sum += product.price
    end
    return sum
  end

  def put_in_cart(product)
    @shopping_cart << product
    puts "*" * 40
    show_shopping_cart
    puts "*" * 40
    puts total_amount.to_s
    puts "*" * 40
  end

  def pay
    @total_amount = total_amount if @total_amount.nil?
     puts "You need to pay:"
     puts @total_amount
     puts "How much do you want to pay?"
     money = gets.chomp.to_f
     @total_amount -= money
     puts "You paid €#{money}. This makes the total cart value:"
     puts @total_amount
     puts "Thank you"

     if @total_amount > 0
       puts "You haven't paid the full bill"
       pay
     else
       puts "Thank you for your payment. Your package will be shipped"
     end
   end
 end
