# My methods

def ingredients_list
  puts "Let's start by preheating the oven at 160 degrees celsius"
  ingredients = {"whole wheat flower" => "250 grams", "rye flower" => "100 grams", "oats" => "50 grams", "baking soda" => "1 tablespoon", "salt" => "1/2 tablespoon", "buttermilk" => "300 ml","egg" => "1"}

  ingredients.each do |ingredient, amount|
    puts "Put #{amount} #{ingredient} into the bowl"
  end

  mixing
end

def mixing
  puts "Are you sure you added every ingredient? (y/n)"
  sure = gets.chomp
  sure.downcase!

  while sure != "y"
    puts "Try again, make sure you added everything!"
    ingredients_list
  end

  puts "Lets mix everything together"
  baking

end

def baking
  puts "Does your bread dough looks like it's mixed well? (y/n)"
  well_mixed = gets.chomp
  well_mixed.downcase!

  while well_mixed != "y"
    puts "Try again then! Mix very well"
    baking
  end

  puts "Put your mixture on a baking tray and form it to a bread-like form
  then, place in the oven for 45 minutes."

end

# Let's start putting everyting in order..

puts "
Let's make some nice soda bread today!

Does this seem like a nice thing to do? (y/n)"

answer = gets.chomp
answer.downcase!

while answer != "y"
  puts "That's to bad! Maybe next time"
end

puts "let's get cooking!"
ingredients_list
