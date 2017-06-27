#"William runs a small resturant here in Baguio.
#He has been looking for ways to cut costs and has realised that
# his largest expense is Michael, his cashier. You are to use what you
# have learned to try and help William reduce the costs in his business."


# $ indicates global variables. That means you can use them anywhere [?]


def reset
  @total = 0
  @items =
  [
    {item: "Apples", php: 10, amt: 0},
    {item: "Bananas", php: 5, amt: 0},
    {item: "Watermelons", php: 25, amt: 0},
    {item: "Oranges", php: 15, amt: 0},
    {item: "Mangoes", php: 20, amt: 0}
   ]
  @items = @items.sort_by { |i, php, a| i[:item]  }
  @money = 0
end


def head
  system 'cls'
  puts '='*92+"\n"*2+'FRUITS'.prepend(' '*5).concat(' '*5).center(92,'+')+"\n"*2+'='*92
end


def intro
  head
  puts '-'*92+"\n"*2+"Type 'Items' to display the fruits available for purchase."
  puts "Type 'End' to exit the program."+"\n"*2+'-'*92
  @choiceintro = gets.chomp.strip
  programEnd(@choiceintro)
  if @choiceintro.downcase.strip == "items"
      purchase
  else
    puts '-'*92+"\n"*2+"That's not one of the choices. Pls. choose one of the choices.".center(92,' ')+"\n"*2+'-'*92
    gets
    intro
  end
end


def programEnd(input)
  head
  if input.downcase == "end"
    puts '-'*92+"\n"*2+"Thanks for stopping by. Have a great day!".center(92)+"\n"*2+'-'*92
    gets
    system "cls"
    reset
    head
    intro
  end
end


def breakdown
  @total = 0
  puts '-'*92+"\n"*2+"Fruits [so far]:"+"\n"*2
  list
  @items.each do |totalComp|
    @total += totalComp[:amt].to_f*totalComp[:php].to_f
  end
  puts "\n"*2+"Total [so far] = #{@total} Php"+"\n"*2+'-'*92
end


def list
  @items.each do |list|
    if list[:amt].to_i > 0
    puts "#{list[:item]} x #{list[:amt]} = #{list[:amt].to_f*list[:php].to_f.round(2)} Php"
  end
  end
end


def itemShow
  head
  puts '-'*92+"\n"*2
  @items.each do |show|
    puts ".".center(25,'.').prepend("#{show[:item]}").concat("#{show[:php]} Php Each")
  end
  puts "\n"+'-'*92
  breakdown
end


def purchase
  @total = 0
  itemShow
  puts '-'*92+"\n"*2+"What would you like to buy?"+" (Type 'End' to exit the program.)"
  @choicepur = gets.chomp.strip
  programEnd(@choicepur)
  @items.each do |askitem|
    if @choicepur.strip.downcase == askitem[:item].downcase
      breakdown
      puts '-'*92+"\n"*2+"#{askitem[:item]} cost #{askitem[:php]} Php each. How many will you buy?"+"\n"*2
      @amt = gets.chomp.strip
      if @amt == 0
        puts '-'*92+"\n"*2+'Nothing was added.'.center(92,' ')+"\n"*2+'-'*92
        gets
        purchase
      elsif @amt.to_i<0
        puts '-'*92+"\n"*2+'Impossible.'.center(92,' ')+"\n"*2+'-'*92
        gets
        purchase
      elsif @amt.to_i>0
        askitem[:amt]+=@amt.to_i
        buymore
      else
        puts '-'*92+"\n"*2+"That's not an amount. Pls. choose a valid amount.".center(92,' ')+"\n"*2+'-'*92
        gets
        purchase
      end

    end
  end
    puts '-'*92+"\n"*2+"That's not one of the choices. Pls. choose one of the choices.".center(92,' ')+"\n"*2+'-'*92
    gets
    purchase
end


def buymore
  head
  breakdown
  puts "\n" + "Would you like to buy more items? (Yes/No)"
  @bm = gets.chomp.strip
  case @bm.strip.downcase
  when 'yes'
    purchase
  when 'no'
    lack?
  else
    head
    puts '-'*92+"\n"*2+"That's not one of the choices. Pls. choose one of the choices.".center(92,' ')+"\n"*2+'-'*92
    gets
    buymore
 end
end


def payment
  head
  @total=0
  puts '-'*92+"\n"*2 + 'Here is a list of your purchases:' + "\n"*2
  list
  @items.each do |totalComp|
    @total += totalComp[:amt].to_f*totalComp[:php].to_f
  end
  puts "\n"*2 + "Total = #{@total} Php"+"\n"*2+'-'*92
  puts "\n"*2 + "You will need to pay #{@total} for your items."
  puts "\n"*2 + "How much money do you have? (Type 'End' to exit the program.)"
  @money = gets.chomp.strip
  programEnd(@money)
  if @money.to_f >= @total.to_f
    @change = @money.to_f - @total.to_f
    breakdown
    puts "\n"*2 + "Money = #{@money.to_f} Php"
    puts "\n"*2 + "You have #{@change.to_f} as change."
    gets
    programEnd('end')
  elsif @money.to_f < @total.to_f
    lack?
  else
    head
    puts '-'*92+"\n"*2+"That's not one of the choices. Pls. choose one of the choices.".center(92,' ')+"\n"*2+'-'*92
    gets
  end
end


def lack?
  head
  breakdown
  @lack = @total.to_f - @money.to_f
  puts "\n"+"Money = #{@money.to_f} Php"+"\n"*2
  if @lack<0
    @change = @money.to_f - @total.to_f
    puts '-'*92+"\n"*2 + "You have #{@change.to_f} as change."
  else
    puts '-'*92+"\n"*2+"You lack #{@lack.to_f} for your purchase."
  end
  puts "\n"*2+'Type "Pay" to start paying for your items.'
  puts "Type 'Items' to add items in your purchase list."
  puts "Type 'Reduce' to reduce the amount of items to purchse."
  puts "Type 'End' to exit program."+"\n"*2+'-'*92
  @lackopt = gets.chomp.strip
  programEnd(@lackopt)
  case @lackopt.strip.downcase # You can also use if, elsif, else for this, but this looks neater. I think elsif is if the other options are too varied and too dificult to case.
  when 'pay'
      payment
  when 'items'
    purchase
  when 'reduce'
    reduce
  else
    puts '-'*92+"\n"*2+"That's not one of the choices. Pls. choose one of the choices.".center(92,' ')+"\n"*2+'-'*92
    gets
    lack?
  end
end

def reduce
  @total = 0
  itemShow
  puts '-'*92+"\n"*2+"What would you like to reduce? (Type 'End' to exit the program.)"+"\n"*2
  @redchoice = gets.chomp.strip
  programEnd(@redchoice)
  @items.each do |askitemred|
    if @redchoice.downcase == askitemred[:item].downcase
      if askitemred[:amt] == 0
        puts '-'*92+"\n"*2+"You haven't added any of this item yet.".center(92,' ')+"\n"*2+'-'*92
        gets
        reduce
      else
        breakdown
        puts '-'*92+"\n"*2+"#{askitemred[:item]} cost #{askitemred[:php]} Php each. How many will you reduce?"+"\n"*2
        @amtred = gets.chomp.strip
        askitemred[:amt]-=@amtred.to_i
        redmore
      end
    end
  end
  puts '-'*92+"\n"*2+"That's not one of the choices. Pls. choose one of the choices.".center(92,' ')+"\n"*2+'-'*92
  gets
  reduce
end


def redmore
  head
  breakdown
  puts "\n"*2 + "Would you like to reduce more items? (Yes/No)"
  @rm = gets.chomp.strip
  case @rm.downcase
  when 'yes'
    reduce
  when 'no'
    lack?
  else
   puts '-'*92+"\n"*2+"That's not one of the choices. Pls. choose one of the choices.".center(92,' ')+"\n"*2+'-'*92
   gets
   redmore
  end
end


reset
head
intro
