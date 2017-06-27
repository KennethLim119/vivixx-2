def startScreen
  system 'cls'
  puts "\n"*12
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
  puts "\n"*5+'What is your name?'.center(88)
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  $name = gets.chomp
  if $name.strip.to_s.downcase == 'end'
    gameOver
  elsif $name.strip.empty?
    puts "\n"*2+"Please type a visible name.".center(88)
    gets
    askName
  else
  puts "\n"*2+"Your name is #{$name}".center(88)
  gets
  end
end


def askAge
  system 'cls'
  puts "\n"*5+"How old are you in years?".center(88)
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  $age = gets.chomp
  if $age.strip.to_s.downcase == 'end'
    gameOver
  elsif $age.to_i == 0
    puts "\n"*2+'Invalid age. Please input a number.'.center(88)
    gets
    askAge
  else
    puts "\n"*2+"You are #{$age.to_i} years old".center(88)
    gets
  end
end


def askAdd
  system 'cls'
  puts "\n"*5+"Where do you live?".center(88)
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  $add = gets.chomp
  if $add.strip.to_s.downcase == 'end'
    gameOver
  elsif $add.strip.empty?
    puts "\n"*2+"Please type a visible address.".center(88)
    gets
    askAdd
  else
    puts "\n"*2+"You live in #{$add}".center(88)
    gets
  end
end


def showProf
  system 'cls'
  puts "\n"*5+'Here is your profile:'.center(88)
  puts "\n"*2+("="*80).center(88)
  puts "\n"*2+"Name: #{$name}".center(88)
  puts "\n"*2+"Age: #{$age.to_i} years old".center(88)
  puts "\n"*2+"Address: #{$add}".center(88)
  puts "\n"*2+("="*80).center(88)
  puts "\n"*2+"These will be the data used for your entire adventure.".center(88)
end


def bSopt1
  system 'cls'
  puts "\n"*5 + "Or not.".center(88)
  gets
  puts "\n"*2+"You decide to stay in bed.".center(88)
  puts "\n"*2+"When you finally decides to wake up, the world has been completely destroyed.".center(88)
  puts "\n"*2+"You are the only one who survives.".center(88)
  gets
  puts "\n"*2 + "THE END.".center(88)
  gets
  replay
end


def bSopt2
  system 'cls'
  puts "\n"*5 + "Or not.".center(88)
  gets
  puts "\n"*2+"Just after a short while after deciding to stay in bed, a UFO flies on top of #{$add}.".center(88)
  puts "\n"*2 + "Using the ray that UFOs usually have, you are abducted and was never heard of ever again.".center(88)
  puts ("\n"*2 + "...").center(88)
  gets
  puts ("\n"*2 + "...").center(88)
  gets
  puts "\n"*2 + "THE END.".center(88)
  gets
  replay
end


def bSopt3
  system 'cls'
  puts "\n"*5 + "Or not.".center(88)
  gets
  puts "\n"*2+"You are too sleepy to go out today.".center(88)
  gets
  puts "\n"*2 + "So he stays in bed for the whole day, letting every possible adventure pass by.".center(88)
  gets
  puts "\n"*2 + "Because of that, you will forever wonder what could've happened to him on this day.".center(88)
  gets
  puts "\n"*2 + "...".center(88)
  gets
  puts "\n"*2 + "THE END.".center(88)
  gets
  replay
end

def bSopt4
  system 'cls'
  puts "\n"*5 + "Or not.".center(88)
  gets
  puts "\n"*2+"Godzilla ate you while you're asleep, and obviously you died.".center(88)
  gets
  puts "\n"*2+"THE END".center(88)
  gets
  replay
end


def replay
  system 'cls'
  puts "\n"*5 +"Would you like to try again? (Y/N)".center(88)
  print ' '.center(43)
  @input = gets.chomp
  if @input.strip.downcase == 'y'
    adStart
  elsif @input.strip.downcase == 'n'
    gameOver
  else
    puts 'Pls input "y" or "n".'.center(88)
    gets
    replay
  end
end


def gameOver
  system 'cls'
  puts "\n"*9
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
  @bS = [bSopt4, bSopt2, bSopt3, bSopt1]
  puts @bS.sample
end


def adStart
  system 'cls'
  puts "\n"*5+"You are #{$name}.".center(88)
  gets
  puts "\n"*2+"We are now in #{$add}.".center(88)
  gets
  puts "\n"*2+"Here, we can see you, #{$age} years of age, barely awake. A new day has come and you are ready to take an adventure.".center(88)
  gets
  puts "\n"*2+"(Choose the number of what to do.)".center(88)
  puts "\n"*2+"1. Get up.".center(88)
  puts "\n"*2+"2. Stay in bed.".center(88)
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  @input = gets
  if @input.strip.to_s.downcase == 'end'
    gameOver
  elsif @input.to_i == 1
    getUp
  elsif @input.to_i == 2
    bedStay
  else
    puts "\n"*2+'Pls. choose one of the choices.'.center(88)
    gets
    adStart
  end
end


def getUp
  system 'cls'
  puts "\n"*5+"'A normal day to start an adventure!'".center(88)
  puts "\n"*2+"What will you do?".center(88)
  puts "\n"*2+"A.Eat some Breakfast\nB.Save the World\nC.Earn Money\nD.Travel"
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
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
    puts "\n"*2+'Pls. choose one of the choices.'.center(88)
    gets
    getUp
  end
end


def travel
  system 'cls'
  puts "\n"*5+"Do you have a passport?(y/n)".center(88)
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  @have = gets.chomp.to_s.downcase
  if @have.strip.to_s.downcase == 'end'
    gameOver
  elsif @have == 'y'
    pickDes
  elsif @have == 'n'
    puts "\n"*5+"You head to the airport.".center(88)
    puts "\n"*2+"You insist on taking a flight even without a passport.".center(88)
    gets
    puts "\n"*2+"You are apprehended by the guards for being too rowdy about it.".center(88)
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  else
    puts "\n"*2+'Pls input "y" or "n".'.center(88)
    gets
    travel
  end
end


def pickDes
  system 'cls'
  puts "\n"*5+"You head to the airport.".center(88)
  gets
  puts "\n"*2+"Pick your destination".center(88)
  puts "\n"*2+"1.Japan\n2.Mexico\n3.Las Vegas".center(88)
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  @pick = gets
  if @pick.strip.to_s.downcase == 'end'
    gameOver
  elsif @pick.chomp.to_i == 1
    puts "\n"*2+"You have been deported for being TOO HANDSOME.".center(88)
    @face = puts %q{
                        .--'''''''''--.
                     .'      .---.      '.
                    /    .-----------.    \
                   /        .-----.        \
                   |       .-.   .-.       |
                   |      /   \ /   \      |
                    \    | .-. | .-. |    /
                     '-._| | | | | | |_.-'
                         | '-' | '-' |
                          \___/ \___/
                       _.-'  /   \  `-._
                     .' _.--|     |--._ '.
                     ' _...-|     |-..._ '
                            |     |
                            '.___.'
                              | |
                             _| |_
                            /\( )/\
    }
    puts "\n"*2+"You never showed your face again.".center(88)
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  elsif @pick.chomp.to_i == 2
    puts "\n"*2+"You're plane crashed, and got stranded in an island.".center(88)
    @trap = puts %q{
                          ___   ____
                    /' --;^/ ,-_\     \ | /    | | | /| | "|" | |\| /"_  "|" /"\  |_) |_"
                    / / --o\ o-\-\-   --(_)--   |/|/ /"| |  |  | | | \_|   |  \_/  |_> |__
                    /-/-/|o|-|\-\-\|\   / | \
                     '`  ` |-|   `` '               |") |_" (_" /"' | | |_" |"\
                           |-|                      |"\ |__ ,_) \_, |_| |__ |_/  o  o  o
                           |-|O
                           |-(\,__
                        ...|-|\--,\_....
                    ,;;;;;;;;;;;;;;;;;;;;;;;;,.
             ~~,;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    }
    puts "\n"*2+"THE END ".center(88)
    gets
    replay
  elsif @pick.chomp.to_i == 3
    puts "\n"*2+"You tried your luck at the casinos in Las Vegas.".center(88)
    gets
    puts "\n"*2+"You were on a losing streak and were down to your last $50.".center(88)
    gets
    puts "\n"*2+"Being the stubborn being you are, you bet your last $50.".center(88)
    gets
    @machine =  puts %q{
                          .-------.
                          |Jackpot|
              ____________|_______|____________
             |  __    __    ___  _____   __    |
             | / _\  / /   /___\/__   \ / _\   |
             | \ \  / /   //  //  / /\ \\ \  25|
             | _\ \/ /___/ \_//  / /  \/_\ \ []|
             | \__/\____/\___/   \/     \__/ []|
             |===_______===_______===_______===|
             ||*|\_     |*| _____ |*|\_     |*||
             ||*|| \ _  |*||     ||*|| \ _  |*||
             ||*| \_(_) |*||*BAR*||*| \_(_) |*||
             ||*| (_)   |*||_____||*| (_)   |*|| __
             ||*|_______|*|_______|*|_______|*||(__)
             |===_______===_______===_______===| ||
             ||*| _____ |*|\_     |*|  ___  |*|| ||
             ||*||     ||*|| \ _  |*| |_  | |*|| ||
             ||*||*BAR*||*| \_(_) |*|  / /  |*|| ||
             ||*||_____||*| (_)   |*| /_/   |*|| ||
             ||*|_______|*|_______|*|_______|*||_//
             |===_______===_______===_______===|_/
             ||*|  ___  |*|   |   |*| _____ |*||
             ||*| |_  | |*|  / \  |*||     ||*||
             ||*|  / /  |*| /_ _\ |*||*BAR*||*||
             ||*| /_/   |*|   O   |*||_____||*||
             ||*|_______|*|_______|*|_______|*||
             |lc=___________________________===|
             |  /___________________________\  |
             |   |        1,000,000        |   |
            _|    \_______________________/    |_
           (_____________________________________)
           }
    puts "\n"*2+"YOU WON! YOU BECAME A MILLIONAIRE!".center(88)
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  else
    puts "\n"*2+'Pls. choose one of the choices.'.center(88)
    gets
    pickDes
  end
end


def earnMoney
  system 'cls'
  puts "\n"*5+"'I need money to buy a Starbucks coffee.'".center(88)
  puts "\n"*2+"What will you do?".center(88)
  puts "\n"*2+"1.Rob a bank\n2.Perform in the Street\n3.Become a Model"
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  @money = gets
  if @money.strip.to_s.downcase == 'end'
    gameOver
  elsif @money.chomp.to_i == 1
    puts "\n"*2+"You go to the bank and steal $1.85 for Freshly Brewed Coffee.".center(88)
    gets
    puts "\n"*2+'However, the police catch you robbing the bank, so you are arrested and sent to prison.'.center(88)
    @prison = puts %q{
                _________________________
                   ||   ||     ||   ||
                   ||   ||, , ,||   ||
                   ||  (||/|/(\||/  ||
                   ||  ||| _'_`|||  ||
                   ||   || o o ||   ||
                   ||  (||  - `||)  ||
                   ||   ||  =  ||   ||
                   ||   ||\___/||   ||
                   ||___||) , (||___||
                  /||---||-\_/-||---||\
                 / ||--_||_____||_--|| \
                (_(||)-| S123-45 |-(||)_)
              |"""""""""""""""""""""""""""|
              | "Stole $1.85  for a       |
              |  Freshly Brewed Coffee    |
              |                   *burp*" |
               """""""""""""""""""""""""""
    }
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  elsif @money.chomp.to_i == 2
    puts "\n"*2+"Your Singing is horrible, the police arrested you for being NOISY.".center(88)
    @sing = puts %q{
                .--..--..--..--..--..--.
              .' \  (`._   (_)     _   \
            .'    |  '._)         (_)  |
           \ _.')\      .----..---.   /
          |(_.'  |    /    .-\-.  \  |
          \     0|    |   ( O| O) | o|
           |  _  |  .--.____.'._.-.  |
           \ (_) | o         -` .-`  |          la                  la
            |    \   |`-._ _ _ _ _\ /    La
            \    |   |  `. |_||_|   |                 la
            | o  |    \_      \     |     -.   .-.              la
            |.-.  \     `--..-'   O |     `.`-' .'
                            _.'  .' |     `-.-'      /-.__   ' .-'
        ' `-.` '.|='=.='=.='=.='=|._/_ `-'.'               la
          `-._  `.  |________/\_____|    `-.'
             .'   ).| '=' '='\/ '=' |
             `._.`  '---------------'
                     //___\   //___\
                       ||       ||
                       ||_.-.   ||_.-.
                      (_.--__) (_.--__)
                                                                              }

    puts "\n"*2+"THE END".center(88)
    gets
    replay
  elsif @money.chomp.to_i == 3
    puts "\n"*2+"You're able to buy you're Coffee and, for some reason, you become the new face of Starbucks".center(88)
    @star = puts %q{

                                            )     (
                                     ___...(-------)-....___
                                 .-""       )    (          ""-.
                           .-'``'|-._             )         _.-|
                          /  .--.|   `""---...........---""`   |
                         /  /    |                             |
                         |  |    |                             |
                          \  \   |        UPLOAD PHOTO         |
                           `\ `\ |                             |
                             `\ `|                             |
                            _/ /\                             /
                            (__/  \                           /
                         _..---""` \        STARBUCKS        /`""---.._
                      .-'           \                       /          '-.
                     :               `-.__             __.-'              :
                     :                  ) ""---...---"" (                 :
                      '._               `"--...___...--"`              _.'
                       \""--..__                              __..--""/
                         '._     """----.....______.....----"""     _.'
                            `""--..,,_____            _____,,..--""`
                                          `"""----"""`
    }

    puts "\n"*2+"THE END".center(88)
    gets
    replay
  else
    puts "\n"*2+'Pls. choose one of the choices.'.center(88)
    gets
    earnMoney
  end
end


def saveWorld
  system 'cls'
  puts "\n"*5+"Its time to save the world from Godzilla.".center(88)
  puts "\n"*2+"What weapon would you use?".center(88)
  puts "\n"*2+"\n1.Sword\n2.Dress up as KingKong\n3.Pokemon Balls"
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  @save = gets
  if @save.strip.to_s.downcase == 'end'
    gameOver
  elsif @save.chomp.to_i == 1
    puts "\n"*2+"The sword is broken, you RUN for your Life".center(88)
    @run = puts %q{
                      __ O
                     /  /\_,               |
                    ___/\                  |
                        /_                 |
              --------------------------------------
                 __o            __o            __o            __o            __o
               _`\<,_         _`\<,_         _`\<,_         _`\<,_         _`\<,_
              (_)/ (_)       (_)/ (_)       (_)/ (_)       (_)/ (_)       (_)/ (_)
            * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

    }
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  elsif @save.chomp.to_i == 2
    puts "\n"*2+"You defeated Godzilla, Turns out that he died from laughing too hard.".center(88)
    @kingKong = puts %q{
                                    ,.-" "-.,
                                   /   ===   \
                                  /  =======  \
                               __|  (o)   (0)  |__
                              / _|    .---.    |_ \
                             | /.----/ O O \----.\ |
                              \/     |     |     \/
                              |                   |
                              |                   |
                              |                   |
                              _\   -.,_____,.-   /_
                         ,.-"  "-.,_________,.-"  "-.,
                       /          |       |          \
                      |           l.     .l           |
                      |            |     |            |
                      l.           |     |           .l
                      |           l.   .l           | \,
                     l.           |   |           .l   \,
                     |           |   |           |      \,
                    l.          |   |          .l        |
                     |          |   |          |         |
                     |          |---|          |         |
                     |          |   |          |         |
                     /"-.,__,.-"\   /"-.,__,.-"\"-.,_,.-"\
                    |            \ /            |         |
                    |             |             |         |
                     \__|__|__|__/ \__|__|__|__/ \_|__|__/
   }
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  elsif @save.chomp.to_i == 3
    @poke = puts %q{
                     ,     ,_
                     |`\    `;;,            ,;;'
                     |  `\    \ '.        .'.'
                     |    `\   \  '-""""-' /
                     `.     `\ /          |`
                       `>    /;   X     X \
                        /   / |       .    ;
                       <  (`";\ ()   ~~~  (/_
                        ';;\  `,     __ _.-'` )
                          >;\          `   _.'
                          `;;\          \-'
                            ;/           \ _
                            |   ,"".     .` \
                            |      _|   '   /
                           ;    /")     .;-,
                            \    /  __   .-'
                             \,_/-"`  `-'
    }

    puts "\n"*2+"Pikachu died! you spend your life capturing Pokemon.".center(88)
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  else
    puts "\n"*2+'Pls. choose one of the choices.'.center(88)
    gets
    saveWorld
  end
end


def eatBreakfast

  system 'cls'
  puts "\n"*5+"Now, I gotta find something to eat.".center(88)
  puts "\n"*2+"What would you like to eat?".center(88)
  puts "\n"*2+"1.Cook some eggs\n2.Cook Some Bacon\n3.Eat Fruits & Vegetables"
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
  @eat = gets
  if @eat.strip.to_s.downcase == 'end'
    gameOver
  elsif @eat.chomp.to_i == 1
    puts "\n"*2+"You got set on fire and obviously died.".center(88)
    @fire = puts %q{

                                            (
                                .            )        )
                                         (  (|              .
                                     )   )\/ ( ( (
                         *  (   ((  /     ))\))  (  )    )
                         (     \   )\(          |  ))( )  (|
                       >)     ))/   |          )/  \((  ) \
                       (     (      .        -.     V )/   )(    (
                    \   /     .   \            .       \))   ))
                          )(      (  | |   )            .    (  /
                       )(    ,'))     \ /          \( `.    )
                     (\>  ,'/__      ))            __`.  /
                        ( \   | /  ___   ( \/     ___   \ | ( (
                           \.)  |/  /   \__      __/   \   \|  ))
                      .  \. |>  \      | __ |      /   <|  /
                             )/    \____/ :..: \____/     \ <
                      )   \ (|__  .      / ;: \          __| )  (
                  ((    )\)  ~--_     --  --      _--~    /  ))
                       \    (    |  ||               ||  |   (  /
                          \.  |  ||_             _||  |  /
                              > :  |  ~V+-I_I_I-+V~  |  : (.
                               (  \:  T\   _     _   /T  : ./
                              \  :    T^T T-+-T T^T    ;<
                               \..`_       -+-       _'  )
                   )            . `--=.._____..=--'. ./         (
                    ((     ) (          )             (     ) (   )>
                     > \/^/) )) (   ( /(.      ))     ))._/(__))./ (_.
                    (  _../ ( \))    )   \ (  / \.  ./ ||  ..__:|  _. \
                    |  \__.  ) |   (/  /: :)) |   \/   |(  <.._  )|  ) )
                   ))  _./   |  )  ))  __  <  | :(     :))   .//( :  : |
                   (: <     ):  --:   ^  \  )(   )\/:   /   /_/ ) :._) :
                    \..)   (_..  ..  :    :  : .(   \..:..    ./__.  ./
                         ^    ^      \^ ^           ^\/^     ^


    }
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  elsif @eat.chomp.to_i == 2
    puts "\n"*2+"You got set on fire and obviously died.".center(88)
    @fire = puts %q{

                                      (
                          .            )        )
                                   (  (|              .
                               )   )\/ ( ( (
                   *  (   ((  /     ))\))  (  )    )
                   (     \   )\(          |  ))( )  (|
                 >)     ))/   |          )/  \((  ) \
                 (     (      .        -.     V )/   )(    (
              \   /     .   \            .       \))   ))
                    )(      (  | |   )            .    (  /
                 )(    ,'))     \ /          \( `.    )
               (\>  ,'/__      ))            __`.  /
                  ( \   | /  ___   ( \/     ___   \ | ( (
                     \.)  |/  /   \__      __/   \   \|  ))
                .  \. |>  \      | __ |      /   <|  /
                       )/    \____/ :..: \____/     \ <
                )   \ (|__  .      / ;: \          __| )  (
            ((    )\)  ~--_     --  --      _--~    /  ))
                 \    (    |  ||               ||  |   (  /
                    \.  |  ||_             _||  |  /
                        > :  |  ~V+-I_I_I-+V~  |  : (.
                         (  \:  T\   _     _   /T  : ./
                        \  :    T^T T-+-T T^T    ;<
                         \..`_       -+-       _'  )
             )            . `--=.._____..=--'. ./         (
              ((     ) (          )             (     ) (   )>
               > \/^/) )) (   ( /(.      ))     ))._/(__))./ (_.
              (  _../ ( \))    )   \ (  / \.  ./ ||  ..__:|  _. \
              |  \__.  ) |   (/  /: :)) |   \/   |(  <.._  )|  ) )
             ))  _./   |  )  ))  __  <  | :(     :))   .//( :  : |
             (: <     ):  --:   ^  \  )(   )\/:   /   /_/ ) :._) :
              \..)   (_..  ..  :    :  : .(   \..:..    ./__.  ./
                   ^    ^      \^ ^           ^\/^     ^
    }
    puts "\n"*2+"THE END".center(88)
    gets
    replay
  elsif @eat.chomp.to_i == 3
    @face = puts %q{
                             OOOOOOOOOOO
                         OOOOOOOOOOOOOOOOOOO
                     OOOOOO  OOOOOOOOO  OOOOOO
                  OOOOOO      OOOOO      OOOOOO
                OOOOOOOO  #   OOOOO  #   OOOOOOOO
               OOOOOOOOOO    OOOOOOO    OOOOOOOOOO
              OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
              OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
              OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO
               OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO
                OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO
                 OOOOO   OOOOOOOOOOOOOOO   OOOO
                    OOOOOO   OOOOOOOOO   OOOOOO
                       OOOOOO         OOOOOO
                           OOOOOOOOOOOO
    }
    n = true
    puts "\n"*2+"Fruits & Vegetables are good for you, Now you can start your day Right!".center(88)
    gets
    getUp
  else
    puts "\n"*2+'Pls. choose one of the choices.'.center(88)
    gets
    eatBreakfast
  end
end



def conProf
  puts "\n"*2+'Type "Y" to begin your adventure.'.center(88)
  puts "\n"*2+'Type "N" to change your name.'.center(88)
  puts "\n"*2+'Type "A" to change your age.'.center(88)
  puts "\n"*2+'Type "L" to change your address.'.center(88)
  puts "\n"*2+"Type 'end' to exit game.".center(88)
  print ' '.center(43)
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
    puts "\n"*2+"That's not one of the options.".center(88)
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
