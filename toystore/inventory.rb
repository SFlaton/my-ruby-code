require "./inventory_file"
require "json"

def index(products)
  products.each_with_index do |product, i|
    puts "#{i+1}) #{product[:name]}"
  end
end

def show(product)
  puts "#{product[:name]}"
  puts "id-number: #{product[:id_number]}"
  puts "quantity: #{product[:quantity]}"
end

def ask(prompt)
  print prompt
  gets.chomp
end

def create_new
  product = {}

  puts
  puts "Enter product info:"

  product[:name] = ask "Name?"
  product[:id_number] = ask "id_number?"
  product[:quantity] = ask "quantity? "

  product
end

def action_new(products)
  product = create_new

  products << product

  write_products(products)

  puts
  puts "New product created"
  puts

  show(product)
  puts
end

def action_show(products, i)
  product = products[i-1]

  puts
  show(product)
  puts
end

def action_delete(products)
  response = ask "Delete which product?"

  i = response.to_i

  puts
  puts "Product #{products[i-1][:name]} is deleted"

  products.delete_at(i-1)
  write_products(products)

  puts
end

def action_error
  puts
  puts "Sorry, I don't recognize that command"
  puts
end

def action_search(products)
  puts
  pattern = ask "Search for? "
  puts

  products.each do |product|
    if product[:name] = /\b#{pattern}/i
      show(product)
      puts
    end
  end
end

loop do
  products = read_products
  index(products)

  puts
  response = ask "Which product would you like to see (n for new, d for delete, s for search, q for quit)?"

  break if response == "q"

  if response == "n"
    action_new(products)
  elsif response == "d"
    action_delete( products )
  elsif response == "s"
    action_search( products )
  elsif response =~ /[0-9]+/
    action_show( products, response.to_i )
  else
    action_error
  end

end

puts
puts "Bye!"
