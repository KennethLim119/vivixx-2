# Dan has started his own car shop, the customers are demanding
# for an easier way to order and dress up their cars. You are
# to build a menu system that calculates the price of a car,
# given different options like paint color, wheels, etc..

class Car
  attr_accessor :c_name, :c_gender, :c_color1, :c_color2, :c_color3, :c_occ
  def initialize(c_name, c_gender, c_color1, c_color2, c_occ)
    @c_name = c_name
    @c_gender = c_gender
    @c_color1 = c_color1
    @c_color2 = c_color2
    @c_color3 = c_color3
    @c_occ = c_occ
  end

  def c_stats_disp
    puts "\n"*2+"#{@c_name}"
    puts "\n"*2+"Gender: #{@c_gender}"
    puts "\n"*2+"Main Color: #{@c_color1}"
    puts "\n"*2+"Trim Color: #{@c_color2}"
    puts "\n"*2+"Occupation: \n#{@c_occ}"
    gets
  end
end


@car_db = [@car1, @car2]
@car1=Car.new('Lightning McQueen', 'Male', 'Red', 'Yellow', "Professional race car\nCrew Chief")
@car2=Car.new('Sammy Smelter', 'Male', 'Blue', 'Brown', 'Rust-eze Racer')


class Color
  attr_accessor
end


def menu_ent
  loop do
    system 'cls'
    puts "\n"*2+"1. View Default Car Profiles"
    puts "\n"*2+"2. View Available Cars"
    print "\n"*2+"3. Exit Program"+"\n"*3
    @menu_ent_in = gets
    if @menu_ent_in.to_i == 3# or 'Exit Program'
      system 'cls'
      puts "\n"*2+"Thanks for stopping by."
      gets
      break
    elsif @menu_ent_in.to_i == 2
      @ctr = 0
      @car_db.each do |name_list|
        @ctr+=1
      puts "#{@ctr}. "name_list.c_name
      gets
    elsif @menu_ent_in.to_i == 1# or 'View Cars'
      @car1.c_stats_disp


    else
      puts "\n"*2+"Invalid input."
      gets
    end
  end
end

def chooseCar
  system 'cls'
  puts @car1.c_name
  gets
  puts 'Car?'
  @car_in = gets
  if @car_i.chomp == @car1.c_name
    chooseColor
  else

end



#menu_ent
#@car1.c_stats_disp
