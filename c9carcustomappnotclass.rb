# Dan has started his own car shop, the customers are demanding
# for an easier way to order and dress up their cars. You are
# to build a menu system that calculates the price of a car,
# given different options like paint color, wheels, etc..


def reset
  @car_db =
  [
    {car_name: 'Lightning McQueen', car_gender: 'Male', car_color1: 'Red', car_color2: 'Yellow', car_occ: "Professional race car\nCrew Chief", car_price: 10000000, car_amt: 0},
    {car_name: 'Sammy Smelter', car_gender: 'Male', car_color1: 'Blue', car_color2: 'Brown', car_occ: 'Rust-eze Racer', car_price: 9000000, car_amt: 0}
  ]

  @car_db = @car_db.sort_by {|cn, cg, cc1, cc2, co| cn[:car_name]}

  @color_db =
  [
    {color: 'Red', color_price: 100000},
    {color: 'Yellow', color_price: 200000},
    {color: 'Blue', color_price: 300000},
    {color: 'Brown', color_price: 400000}
  ]

end


  def car_stats_disp
    @car_db.each do |list|
      system 'cls'
      puts "\n"*2+'Default Car Profiles'.upcase
      puts "\n"*2+"Name: #{list[:car_name]}"
      puts "\n"*2+"Gender: #{list[:car_gender]}"
      puts "\n"*2+"Main Color: #{list[:car_color1]}"
      puts "\n"*2+"Trim Color: #{list[:car_color2]}"
      puts "\n"*2+"Occupation: \n#{list[:car_occ]}"
      gets
    end
  end


def receipt
  puts "\n"*2+"PURCHASES"
  @purchase_total = 0
  puts "\n"*2+'='*92
  @car_db.each do |pur_list|
    if pur_list[:car_amt] > 0
    puts "\n"*2+"#{pur_list[:car_name]} [#{pur_list[:car_amt]}] = #{pur_list[:car_amt].to_f.round(2)*pur_list[:car_price].to_f.round(2)} Gears"
    @purchase_total += pur_list[:car_amt].to_f.round(2)*pur_list[:car_price].to_f.round(2)
    end
  end
  puts "\n"*2+"Total [so far]: #{@purchase_total} Gears"
  puts "\n"*2+'='*92
end


def menu_ent
  loop do
    system 'cls'
    puts "\n"*2+"CARS' CARS"
    receipt
    puts "\n"*2+"1. View Default Car Profiles"
    puts "\n"*2+"2. Buy Car"
    puts "\n"*2+"3. Customize Car"
    print "\n"*2+"4. Exit Program"+"\n"*3

    @menu_ent_in = gets
    if @menu_ent_in.to_i == 4# or 'Exit Program'
      system 'cls'
      puts "\n"*2+"Thanks for stopping by."
      gets
      menu_ent
    elsif @menu_ent_in.to_i == 2
      buy_car
    elsif @menu_ent_in.to_i == 1# or 'View Cars'
      car_stats_disp
    elsif @menu_ent_in.to_i == 3
      cus_car
      gets
    else
      puts "\n"*2+"Invalid input."
      gets
    end
  end
end

def buy_car
  system 'cls'
  puts "\n"*2+"Buy Car".upcase
  @ctr = 0
  @car_db.each do |price_list|
    @ctr+=1
    puts "\n"*2+"#{@ctr}. #{price_list[:car_name]} = #{price_list[:car_price]} Gears."
  end
  print "\n"*2+"Input name of desired car: "
  @def_car_in = gets.chomp
  @car_db.each do |com_name|
    if @def_car_in == com_name[:car_name]
      puts "You bought #{com_name[:car_name]}."
      com_name[:car_amt] += 1
      gets
      pur_again
    end
  end
  puts "\n"*2+"Invalid input."
  gets
  buy_car
end

def pur_again
  system 'cls'
  puts "\n"*2+"Would you like to make another purchase? [Yes/No]"
  pur_again = gets.strip.downcase
  if pur_again == 'yes'
    buy_car
  elsif pur_again == 'no'
    menu_ent
  else
    puts "\n"*2+"Invalid input."
    gets
    pur_again
  end
end

def cus_car
  @cus_car = []
  system 'cls'
  print "\n"*2+"Enter desired car name:"
  @cus_car_name = gets
  @cus_car.push(@cus_car_name)
  cus_car_make
end


def cus_car_make
  system 'cls'
  @car_db.each do |make|
    puts "\n"*2+"#{make[:car_name]}"
  end
  print "\n"*2+"Choose Car Make:"
  @cus_car_name = gets.chomp
  @car_db.each do |cus_make|
    if @cus_car_name == cus_make[:car_name]
      puts "Your car has #{cus_make[:car_name]}'s make."
      @cus_car.push(cus_make[:car_price])
      gets
      cus_car_color1
    end
  end
  puts "No car make of that name exists."
  gets
  cus_car_make
end

def cus_car_color1
  @color_db.each do |cus_color1|
    puts "\n"*2+"#{cus_color1[:color]} = #{cus_color1[:color_price]} Gears"
  end
  print "\n"*2+"Choose Car Main Color:"
  @cus_main_color = gets.chomp
  @color_db.each do |com_color1|
    if @cus_main_color == com_color1[:color]
      puts "Your car has a #{com_color1[:color]} main color."
      @cus_car.push(com_color1[:color])
      @cus_car.push(com_color1[:color_price])
      gets
      cus_car_color2
    end
  end
  puts "No color of that name exists."
  gets
  cus_car_color1
end

def cus_car_color2
  @color_db.each do |cus_color2|
    puts "\n"*2+"#{cus_color2[:color]} = #{cus_color2[:color_price]} Gears"
  end
  print "\n"*2+"Choose Car Trim Color:"
  @cus_car_color2 = gets.chomp
  @color_db.each do |com_color2|
    if @cus_car_color2 == com_color2[:color]
      puts "Your car has a #{com_color2[:color]} trim color."
      @cus_car.push(com_color2[:color])
      @cus_car.push(com_color2[:color_price])
      gets
      cus_car_stat
    end
  end
  puts "No color of that name exists."
  gets
  cus_car_color2
end

reset
menu_ent
#@car1.c_stats_disp
