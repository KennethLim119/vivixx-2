#"William runs a small resturant here in Baguio.
#He has been looking for ways to cut costs and has realised that
# his largest expense is Michael, his cashier. You are to use what you
# have learned to try and help William reduce the costs in his business."

puts "Hello, I'm a cashier more useful than your previous one. But all I do is add up prices."

puts "Here's what we have:"
puts "Apple = 10 each"
puts "Banana = 15 each"
puts "Pear = 20 each"
puts "Orange = 25 each"

puts "How many Apples?"
numa = gets.chomp
pricea = numa.to_i * 10
puts "How Many Bananas?"
numb = gets.chomp
priceb = numb.to_i * 15
puts "How many Pears?"
nump = gets.chomp
pricep = nump.to_i * 20
puts "How many Oranges?"
numo = gets.chomp
priceo = numo.to_i * 25
price = pricea.to_i + priceb.to_i + pricep.to_i + priceo.to_i
puts "Total Price: #{price.to_i}"

puts "How much money do you have?"
money = gets.chomp
if money.to_i > price.to_i
  change = money.to_i - price.to_i
  puts "You have #{change.to_i} as change. Thank you!"
else
  lack = price.to_i - money.to_i
    puts "I'm sorry. You lack #{lack.to_i} for your purchase. Please reduce your purchases or get more money."
end

puts "Thank you for shopping! :)"
