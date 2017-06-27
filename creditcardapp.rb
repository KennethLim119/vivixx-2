require_relative 'creditcard'
system "cls"
begin
  puts " "*20 + "Enter Credit Card Number: "
  print " "*20 + ">"
  @input = gets.chomp
  validate(@input)
  #system "cls"
  #puts "\n"*6
  #puts validate(@input) ? " "*26 +"SUCCESS" : " "*26 +"INVALID"
  #puts "\n"*6
rescue InvalidCardError => e
  system "cls"
  puts " "*15 + e.message
  retry
end
system "cls"
puts "\n"*6
puts " "*26 +"SUCCESS"
puts "\n"*6
