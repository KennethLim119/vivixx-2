#CarApp
#car should have make, age, top_speed, and gas_tank_size
#driver should have name, a car, age and a contact
#use attr_accessor to set up getters and setters
#create the app so that we can have the cars make and age output to the terminal

###################################CLASSES###################################

class Cars
  attr_accessor :car_name, :make, :car_age, :top_speed, :gas_tank_size
  def initialize(car_name, make, car_age, top_speed, gas_tank_size)
    @car_name = car_name
    @make = make
    @car_age = car_age
    @top_speed = top_speed
    @gas_tank_size = gas_tank_size
  end

  def carInfo
    puts "\n" + '-'*92 + "\n"*2 + "CARS".center(92) + "\n"*2 + '-'*92
    puts "\n" + "#{@make}".center(92)
    puts "\n"*2 + "#{@car_name}".center(92)
    puts "\n"*2 + "Age: #{@car_age}"
    puts "\n"*2 + "Top Speed: #{@top_speed}"
    puts "\n"*2 + "Gas Tank Size: #{@gas_tank_size}"+"\n"*2+'-'*92
  end
end

class Drivers
  attr_accessor :driver_name, :driver_age, :contact, :car
  def initialize(driver_name, driver_age, contact, car)
    @driver_name = driver_name
    @driver_age = driver_age
    @contact = contact
    @car = car
  end
  def driverInfo
    puts "\n" + '-'*92 + "\n"*2 + "DRIVERS".center(92) + "\n"*2 + '-'*92
    puts "\n" + "#{@driver_name}".center(92)
    puts "\n"*2 + "Age: #{@driver_age}"
    puts "\n"*2 + "Contact: #{@contact}"
    puts "\n"*2 + "Car: #{@car}"+"\n"*2+'-'*92
  end
end

#########################################################################################################


#########################################CARS AVAILABLE###############################################

@car1 = Cars.new('DB5', 'Aston Martin', '53 years', '80 kph', '23 gallons')
@car2 = Cars.new('Esprit Series 1', 'Lotus', '41 years', '100 kph', '19 gallons')
@car3 = Cars.new('Bat Mobile', 'Secret', 'Unknown', '200 kph', '23 gallons' )

#########################################DRIVERS####################################################################################################

@driver1 = Drivers.new('James Bond','45','007',"#{@car1.car_name}")
@driver1a = @driver1.clone
@driver1a.car = "#{@car2.car_name}"
@driver2 = Drivers.new('Batman', '35', 'Bat Light', "#{@car3.car_name}")

################################################################################################################

def header
  system "cls"
  puts "\n" + '='*92 + "\n"*2 + "MOVIE RIDES".center(92,'>>> ') + "\n"*2 + '='*92
end

def chooseAct
  puts "\n"*2 + 'Type "Drivers" to view drivers.'.center(92)
  puts "\n"*2 + 'Type "Exit" to exit program.'.center(92)
  @introchoice = gets
  if @introchoice.to_s.strip.downcase == 'exit'
    xPrg
  elsif @introchoice.to_s.strip.downcase == 'drivers'
    viewProfiles
  else
    puts 'Invalid input.'
    gets
    header
    chooseAct
  end
end

def xPrg
  system 'cls'
  header
  puts "\n"*2 + 'Thanks for stopping by.'.center(92)
  gets
  header
  chooseAct
end

def viewProfiles
header
@driver1.driverInfo
gets
system 'cls'
header
@driver1a.driverInfo
gets
system 'cls'
header
@driver2.driverInfo
gets
seeCar
end

def seeCar
  system 'cls'
  header
  puts "\n"*2 + 'See car of: (Type "end" to return to main.)'
  puts "\n"*2 + 'James Bond'
  print "\n"*2 + 'Batman' #so 'print' doesn't do \n....riiiiiiiight
  @whosecar = gets
  case @whosecar.chomp
  when @driver1.driver_name
    puts 'JAMES BOND'.center(92)
    @car1.carInfo
    gets
    puts 'JAMES BOND'.center(92)
    @car2.carInfo
    gets
    system 'cls'
    seeCar
  when @driver2.driver_name
    puts 'BATMAN'.center(92)
    @car3.carInfo
    gets
    system 'cls'
    seeCar
  when 'end'
    header
    chooseAct
  else
    puts 'Not a driver.'
    gets
    seeCar
  end

end

header
chooseAct



#system 'cls'
#car1.carInfo
#gets
#system 'cls'
#car2.carInfo
#gets
#system 'cls'
#car3.carInfo
#gets
#system 'cls'
#driver1a.driverInfo








#puts "What's your name?"
#@name = gets
#puts "What's your age?"
#@age = gets
#puts "What's your contact number?"
#@age = gets


#ooh, animations....sleep fxn
