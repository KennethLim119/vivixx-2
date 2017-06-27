def scenario
  n =  true
  while n==true do
  puts "A normal day to start an adventure"
  puts "What will you do?"
  puts "\nA.Eat some Breakfast\nB.Go Back to Sleep\nC.Save the World\nD.Earn Money\nE.Travel"
  adventure = gets.chomp.to_s.upcase
    if adventure == "A"
      puts "Now, I gotta find something to eat"
      puts "What would you like to eat?"
      puts "\n1.Cook some eggs\n2.Cook Some Bacon\n3.Eat Fruits & Vegetables"
      eat = gets.chomp.to_i
      if eat == 1
          puts "You got set On Fire, and obviously died."
          puts "THE END"
          puts "Do you want to try again(y/n)?"
          yes = gets.chomp.to_s
            if yes == "y"
              n = true
            else
              puts "I''m Tired"
            end
       elsif eat == 2
          puts "You got set On Fire, and obviously died."
          puts "THE END"
          puts "Do you want to try again(y/n)?"
          yes = gets.chomp.to_s
            if yes =="y"
              n = true
            else
              puts "I''m Tired"
            end
       else
          n = true
          puts "Fruits & Vegetables are good for you, Now you can start your day Right?"
          puts "Do you want to take an adventure again? (y/n)"
          yes = gets.chomp.to_s
            if yes == "y"
              n = true
            else
              puts "Next time"
            end
      end
    elsif adventure == "B"
      puts "Godzilla eat you while you're asleep, and obviously died."
      puts "THE END"
      puts "Do you want to try again(y/n)?"
      yes = gets.chomp.to_s
        if yes == "y"
          n = true
        else
          puts "I''m Tired"
        end
    elsif adventure == "C"
      puts "Its time to save the world from Godzilla"
      puts "What weapon would you use?"
      puts "\n1.Sword\n2.Dress up as KingKong\n3.Pokemon Balls"
      save = gets.chomp.to_i
        if save == 1
          puts "The sword is broken, you RUN for your Life"
          puts "THE END"
          puts "Do you want to try again(y/n)?"
         yes = gets.chomp.to_s
            if yes == "y"
              n = true
            else
              puts "I''m Scared"
            end
        elsif save == 2
          puts "You defeated Godzilla, Turns out that he died from laughing too hard"
          puts "THE END"
          puts "Do you want to choose another adventure(y/n)?"
          yes = gets.chomp.to_s
            if yes == "y"
              n = true
            else
              puts "I''m Tired"
            end
        else
          puts "Pikachu died! you spend your life capturing a Pokemon"
          puts "THE END"
          puts "Do you want to choose another adventure(y/n)?"
          yes = gets.chomp.to_s
            if yes == "y"
              n = true
            else
              puts "I''m Tired"
            end
        end
    elsif adventure == "D"
          puts "Need Money to buy a Starbuck coffee"
          puts "What will you do?"
          puts "\n1.Rob a bank\n2.Perform in the Street\n3.Become a Model"
              money = gets.chomp.to_i
              if money == 1
              puts "You went to prison for taking a $1.85 for Freshly Brewed Coffee	Tall"
              puts "THE END"
              elsif money == 2
              puts "Your Singing sucks, the police arrested you for being NOISY"
              puts "THE END"
              else money == 3
              puts "You're able to buy you're Coffee and become the new face of Starbucks"
              puts "THE END"
            end
    else
          puts "Do you have a passport?(y/n)"
          have = gets.chomp.to_s
            if have == "y"
              puts "Pick your destination"
              puts "\n1.Japan\n2.Mexico\n3.Las Vegas"
              pick = gets.chomp.to_i
              if pick == 1
              puts "You have been deported for being TOO HANDSOME."
              puts "You never showed your face again"
              puts "THE END"
              puts "Do you want to choose another adventure(y/n)?"
              yes = gets.chomp.to_s
                if yes == "y"
                  n = true
                else
                  puts "I''m Tired"
                end
             elsif pick == 2
              puts "You're plane crashed, and got stranded in an island"
              puts "THE END "
              puts "Do you want to choose another adventure(y/n)?"
              yes = gets.chomp.to_s
                if yes == "y"
                  n = true
                else
                  puts "I''m Tired"
                end
              else
              puts "You tried your luck, you bet your last $50"
              puts "YOU BECAME A MILLIONAIRE"
              puts "THE END"
              puts "Do you want to choose another adventure(y/n)?"
              yes = gets.chomp.to_s
                if yes == "y"
                  n = true
                else
                  puts "I''m Tired"
                end
              end
          end
      end
   end
end

scenario
