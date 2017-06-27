class Profile
  attr_accessor :name, :age, :add
  def initialize(name, age, add)
    name = $name
    age = $age
    add = $add
  end

  def name
    $name
  end

  def age
    $age
  end

  def add
    $add
  end
end


def startScreen
  system 'cls'
  puts'
                              ____ ____ ____ ____ ____ ____ ____ ____ ____ ____
                              ||R |||A |||N |||V |||E |||N |||T |||U |||R |||E ||
                              ||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||
                              |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|
  '
  gets
  intro
end



def askName
  system 'cls'
  puts "\n"*5+'What is your name?'.center(90)
  puts "\n"*2+"Type 'end' to exit game.".center(90)
  print ' '.center(45)
  $name = gets.chomp
  if $name.strip.to_s.downcase == 'end'
    gameOver
  elsif $name.strip.empty?
    puts "\n"*2+"Please type a visible name.".center(90)
    gets
    askName
  else
  puts "\n"*2+"Your name is #{$name}".center(90)
  gets
  end
end


def askAge
  system 'cls'
  puts "\n"*5+"How old are you in years?".center(90)
  puts "\n"*2+"Type 'end' to exit game.".center(90)
  print ' '.center(45)
  $age = gets.chomp
  if $age.strip.to_s.downcase == 'end'
    gameOver
  elsif $age.to_i == 0
    puts "\n"*2+'Invalid age. Please input a number.'.center(90)
    gets
    askAge
  else
    puts "\n"*2+"You are #{$age.to_i} years old".center(90)
    gets
  end
end


def askAdd
  system 'cls'
  puts "\n"*5+"Where do you live?".center(90)
  puts "\n"*2+"Type 'end' to exit game.".center(90)
  print ' '.center(45)
  $add = gets.chomp
  if $add.strip.to_s.downcase == 'end'
    gameOver
  elsif $add.strip.empty?
    puts "\n"*2+"Please type a visible address.".center(90)
    gets
    askAdd
  else
    puts "\n"*2+"You live in #{$add}".center(90)
    gets
  end
end


def showProf
  system 'cls'
  puts "\n"*5+'Here is your profile:'.center(90)
  puts "\n"*2+("="*90).center(90)
  puts "\n"*2+"Name: #{$name}".center(90)
  puts "\n"*2+"Age: #{$age.to_i} years old".center(90)
  puts "\n"*2+"Address: #{$add}".center(90)
  puts "\n"*2+("="*90).center(90)
  puts "\n"*2+"These will be the data used for your entire adventure.".center(90)
  prof1=Profile.new($name, $age, $add)
end





def bSopt1
  system 'cls'
  puts "\n"*5 + "Or not."
  gets
  puts "\n"*2+"You decide to stay in bed."
  puts "\n"*2+"When you finally decides to wake up, the world has been completely destroyed."
  puts "\n"*2+"You are the only one who survives."
  gets
  puts "\n"*2 + "THE END."
  gets
  replay
end


def bSopt2
  system 'cls'
  puts "\n"*5 + "Or not."
  gets
  puts "\n"*2+"Just after a short while after deciding to stay in bed, a UFO flies on top of #{$add}."
  puts "\n"*2 + "Using the ray that UFOs usually have, you are abducted and was never heard of ever again."
  puts ("\n"*2 + "...")
  gets
  puts ("\n"*2 + "...")
  gets
  puts "\n"*2 + "THE END."
  gets
  replay
end


def bSopt3
  system 'cls'
  puts "\n"*5 + "Or not."
  gets
  puts "\n"*2+"You are too sleepy to go out today. "
  gets
  puts "\n"*2 + "So he stays in bed for the whole day, letting every possible adventure pass by."
  gets
  puts "\n"*2 + "Because of that, you will forever wonder what could've happened to him on this day."
  gets
  puts "\n"*2 + "..."
  gets
  puts "\n"*2 + "THE END."
  gets
  replay
end


def bSopt4
  system 'cls'
  puts "\n"*5 + "Or not."
  gets
  puts "\n"*2+"Godzilla ate you while you're asleep, and obviously you died."
  gets
  puts "THE END"
  gets
  replay
end


def replay
  system 'cls'
  puts "\n"*5 +"Would you like to try again? (Y/N)".center(90)
  @input = gets.chomp
  if @input.strip.downcase == 'y'
    adStart
  elsif @input.strip.downcase == 'n'
    gameOver
  else
    puts 'Pls input "y" or "n".'
    gets
    replay
  end
end

def gameOver
  system 'cls'
  puts '
                            ____ ____ ____ ____
                           ||G |||A |||M |||E ||
                           ||__|||__|||__|||__||
                           |/__\|/__\|/__\|/__\|
                            ____ ____ ____ ____
                           ||O |||V |||E |||R ||
                           ||__|||__|||__|||__||
                           |/__\|/__\|/__\|/__\|
  '
  gets
  exit
end


def bedStay
  @bS = [bSopt2, bSopt3, bSopt1, bSopt4]
  puts @bS.sample
end


def adStart
  system 'cls'
  puts "\n"*5+"You are #{$name}."
  gets
  puts "\n"*2+"We are now in #{$add}."
  gets
  puts "\n"*2+"Here, we can see you, #{$age} years of age, barely awake. A new day has come and you are ready to take an adventure."
  gets
  puts "\n"*2+"(Choose the number of what to do.)"
  puts "\n"*2+"1. Get up."
  puts "\n"*2+"2. Stay in bed."
  puts "\n"*2+"Type 'end' to exit game."
  @input = gets
  if @input.strip.to_s.downcase == 'end'
    gameOver
  elsif @input.to_i == 1
    getUp
  elsif @input.to_i == 2
    bedStay
  else
    puts "\n"*2+'Pls. choose one of the choices.'
    gets
    adStart
  end
end


def getUp
  system 'cls'
  puts "\n"*5+"'A normal day to start an adventure!'"
  puts "\n"*2+"What will you do?"
  puts "\n"*2+"A.Eat some Breakfast\nB.Save the World\nC.Earn Money\nD.Travel"
  puts "\n"*2+"Type 'end' to exit game."
  @adventure = gets.chomp.to_s.upcase
  if @adventure.strip.to_s.downcase == 'end'
    gameOver
  elsif @adventure == "A"
    eatBreakfast
  elsif @adventure == "B"
    saveWorld
  elsif @adventure == "C"
    earnMoney
  elsif @adventure == "D"
    travel
  else
    puts "\n"*2+'Pls. choose one of the choices.'
    gets
    getUp
  end
end


def travel
  system 'cls'
  puts "\n"*5+"Do you have a passport?(y/n)"
  puts "\n"*2+"Type 'end' to exit game."
  @have = gets.chomp.to_s.downcase
  if @have.strip.to_s.downcase == 'end'
    gameOver
  elsif @have == 'y'
    pickDes
  elsif @have == 'n'
    puts "\n"*5+"You head to the airport."
    puts "\n"*2+"You insist on taking a flight even without a passport."
    gets
    puts "\n"*2+"You are apprehended by the guards for being too rowdy about it."
    puts "\n"*2+"THE END"
    gets
    replay
  else
    puts "\n"*2+'Pls input "y" or "n".'
    gets
    travel
  end
end

def pickDes
  system 'cls'
  puts "\n"*5+"You head to the airport."
  gets
  puts "\n"*2+"Pick your destination"
  puts "\n"*2+"1.Japan\n2.Mexico\n3.Las Vegas"
  puts "\n"*2+"Type 'end' to exit game."
  @pick = gets
  if @pick.strip.to_s.downcase == 'end'
    gameOver
  elsif @pick.chomp.to_i == 1
    puts "\n"*2+"You have been deported for being TOO HANDSOME."
    puts "\n"*2+"You never showed your face again"
    puts "\n"*2+"THE END"
    gets
    replay
  elsif @pick.chomp.to_i == 2
    puts "\n"*2+"You're plane crashed, and got stranded in an island"
    puts "\n"*2+"THE END "
    gets
    replay
  elsif @pick.chomp.to_i == 3
    puts "\n"*2+"You tried your luck at the casinos in Las Vegas. "
    gets
    puts "\n"*2+"You were on a losing streak and were down to your last $50."
    gets
    puts "\n"*2+"Being the stubborn being you are, you bet your last $50."
    gets
    puts "\n"*2+"YOU WON! YOU BECAME A MILLIONAIRE!"
    puts "\n"*2+"THE END"
    gets
    replay
  else
    puts "\n"*2+'Pls. choose one of the choices.'
    gets
    pickDes
  end
end


def earnMoney
  system 'cls'
  puts "\n"*5+"'I need money to buy a Starbucks coffee.'"
  puts "\n"*2+"What will you do?"
  puts "\n"*2+"1.Rob a bank\n2.Perform in the Street\n3.Become a Model"
  puts "\n"*2+"Type 'end' to exit game."
  @money = gets
  if @money.strip.to_s.downcase == 'end'
    gameOver
  elsif @money.chomp.to_i == 1
    puts "\n"*2+"You go to the bank and steal $1.85 for Freshly Brewed Coffee, Tall."
    gets
    puts "\n"*2+'However, the police catch you robbing the bank, so you are arrested and sent to prison.'
    puts "\n"*2+"THE END"
    gets
    replay
  elsif @money.chomp.to_i == 2
    puts "\n"*2+"Your Singing is horrible, the police arrested you for being NOISY."
    puts "\n"*2+"THE END"
    gets
    replay
  elsif @money.chomp.to_i == 3
    puts "\n"*2+"You're able to buy you're Coffee and, for some reason, you become the new face of Starbucks"
    puts "\n"*2+"THE END"
    gets
    replay
  else
    puts "\n"*2+'Pls. choose one of the choices.'
    gets
    earnMoney
  end
end


def saveWorld
  system 'cls'
  puts "\n"*5+"Its time to save the world from Godzilla"
  puts "\n"*2+"What weapon would you use?"
  puts "\n"*2+"\n1.Sword\n2.Dress up as KingKong\n3.Pokemon Balls"
  puts "\n"*2+"Type 'end' to exit game."
  @save = gets
  if @save.strip.to_s.downcase == 'end'
    gameOver
  elsif @save.chomp.to_i == 1
    puts "\n"*2+"The sword is broken, you RUN for your Life"
    puts "\n"*2+"THE END"
    gets
    replay
  elsif @save.chomp.to_i == 2
    puts "\n"*2+"You defeated Godzilla, Turns out that he died from laughing too hard"
    puts "\n"*2+"THE END"
    gets
    replay
  elsif @save.chomp.to_i == 3
    puts "\n"*2+"Pikachu died! you spend your life capturing a Pokemon"
    puts "\n"*2+"THE END"
    gets
    replay
  else
    puts "\n"*2+'Pls. choose one of the choices.'
    gets
    saveWorld
  end
end


def eatBreakfast
  system 'cls'
  puts "\n"*5+"Now, I gotta find something to eat."
  puts "\n"*2+"What would you like to eat?"
  puts "\n"*2+"1.Cook some eggs\n2.Cook Some Bacon\n3.Eat Fruits & Vegetables"
  puts "\n"*2+"Type 'end' to exit game."
  @eat = gets
  if @eat.strip.to_s.downcase == 'end'
    gameOver
  elsif @eat.chomp.to_i == 1
    puts "\n"*2+"You got set on fire and obviously died."
    puts "\n"*2+"THE END"
    gets
    replay
  elsif @eat.chomp.to_i == 2
    puts "\n"*2+"You got set on fire and obviously died."
    puts "\n"*2+"THE END"
    gets
    replay
  elsif @eat.chomp.to_i == 3
    n = true
    puts "\n"*2+"Fruits & Vegetables are good for you, Now you can start your day Right?"
    gets
    getUp
  else
    puts "\n"*2+'Pls. choose one of the choices.'
    gets
    eatBreakfast
  end
end



def conProf
  puts "\n"*2+'Type "Y" to begin your adventure.'.center(90)
  puts "\n"*2+'Type "N" to change your name.'.center(90)
  puts "\n"*2+'Type "A" to change your age.'.center(90)
  puts "\n"*2+'Type "L" to change your address.'.center(90)
  puts "\n"*2+"Type 'end' to exit game.".center(90)
  @input = gets
  if @input.strip.to_s.downcase == 'end'
    gameOver
  elsif @input.strip.to_s.downcase == 'y'
    adStart
  elsif @input.strip.to_s.downcase == 'n'
    askName
    showProf
    conProf
  elsif @input.strip.to_s.downcase == 'a'
    askAge
    showProf
    conProf
  elsif @input.strip.to_s.downcase == 'l'
    askAdd
    showProf
    conProf
  else
    puts "\n"*2+"That's not one of the options."
    gets
    showProf
    conProf
  end
end


def intro
  askName
  askAge
  askAdd
  showProf
  conProf
end



###################################################### PROGRAM START ##################################################################

startScreen
intro
