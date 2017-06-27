#Joseph is in a rush to make a really important purchase.
#He has no money on him so he has gone to withdraw money from BPI
#but has found that there are serious issues with their systems!
#Can you reprogram the atm so he can buy his romance novel??"


#atm
#Process:
  #transactions
  #withcdraw

  #Classes:
  #atm card account, Holder, pin
  #transaction = withdraw, check balance, deposit
  #

  #customer1 = Transaction.new()


@clients =
[
  {name: 'Joseph', pin: 4863, bal: 1000000, actnum: 2198513516},
  {name: 'DMonMac', pin: 8954, bal: 5000, actnum: 1863516512}
]


@transactions =
['INQUIRE BALANCE', 'WITHDRAW', 'DEPOSIT', 'CHANGE PIN', 'FUND TRANSFER', 'EXIT']


def intro
  system "cls"
  puts "\n"*5
  puts '   /$$$$$$$  /$$$$$$$  /$$$$$$'.center(88,' ')
  puts '  | $$__  $$| $$__  $$|_  $$_/'.center(88,' ')
  puts '| $$  \ $$| $$  \ $$  | $$'.center(88,' ')
  puts '| $$$$$$$ | $$$$$$$/  | $$'.center(88,' ')
  puts '| $$__  $$| $$____/   | $$'.center(88,' ')
  puts '| $$  \ $$| $$        | $$'.center(88,' ')
  puts '  | $$$$$$$/| $$       /$$$$$$'.center(88,' ')
  puts '  |_______/ |__/      |______/'.center(88,' ')+"\n"*2
  puts '  /$$$$$$$$ /$$   /$$ /$$$$$$$  /$$$$$$$  /$$$$$$$$  /$$$$$$   /$$$$$$'.center(88,' ')
  puts '  | $$_____/| $$  / $$| $$__  $$| $$__  $$| $$_____/ /$$__  $$ /$$__  $$'.center(88,' ')
  puts '  | $$      |  $$/ $$/| $$  \ $$| $$  \ $$| $$      | $$  \__/| $$  \__/'.center(88,' ')
  puts ' | $$$$$    \  $$$$/ | $$$$$$$/| $$$$$$$/| $$$$$   |  $$$$$$ |  $$$$$$'.center(88,' ')
  puts '  | $$__/     >$$  $$ | $$____/ | $$__  $$| $$__/    \____  $$ \____  $$'.center(88,' ')
  puts '  | $$       /$$/\  $$| $$      | $$  \ $$| $$       /$$  \ $$ /$$  \ $$'.center(88,' ')
  puts '  | $$$$$$$$| $$  \ $$| $$      | $$  | $$| $$$$$$$$|  $$$$$$/|  $$$$$$/'.center(88,' ')
  puts ' |________/|__/  |__/|__/      |__/  |__/|________/ \______/  \______/'.center(88,' ')
  gets
  askpin
end


def askpin
  system "cls"
  puts "\n"*3+'Please input your 4-digit PIN number.'.center(92)+"\n"*2
  puts '(Type "end" to abort transaction.)'.center(92)+"\n"*3
  @pin = gets
  xPrg(@pin.to_s.strip)
  @clients.each do |pincheck|
    if @pin.strip.to_i == pincheck[:pin].to_i
        system "cls"
        opt
    end
  end
  puts "\n"*3+"You have entered an incorrect pin. Pls try again.".center(92)
  gets
  askpin
end


def opt
  system "cls"
  puts "\n"*3+"TRANSACTIONS".center(92)+"\n"*3
  puts 'PLEASE SELECT NUMBER OF DESIRED TRANSACTION'.center(92)+"\n"*2
  ctr=0
  @transactions.each do
    ctr+=1
    puts "#{ctr}. #{@transactions[ctr-1]}"+"\n"*2
  end
  @choice = gets.chomp.to_i
  case @choice
  when 2
    wthDrw
  when 1
    inqBal
  when 6
    xPrg('end')
  when 4
    chngpin
  when 3
    dpst
  when 5
    fndtrns
  else
    puts 'That is not one of the options. Please choose one of the options.'.center(92)
    gets
    opt
  end
end


def wthDrw
  system "cls"
  @clients.each do |wd|
    if @pin.strip.to_i == wd[:pin]
      puts "\n"*3+"WITHDRAWAL".center(92)+"\n"*5
      puts "Total Balance = #{wd[:bal].to_f.round(2)} Php".center(92)+"\n"*5
      puts 'How much would you like to withdraw?'.center(92)+"\n"*5
      puts '(Type "cancel" to cancel this transaction.)'.center(92)+"\n"*2
      puts '(Type "end" to abort transaction.)'.center(92)+"\n"*2
      @wthdrwl = gets
      xPrg(@wthdrwl.to_s.strip)
      cancel(@wthdrwl.to_s.strip)
      #if @wthdrwl.class == String and @wthdrwl = 0
      #  puts "\n"*2+'Invalid input.'.center(92)+"\n"*2
      #  gets
      #  wthDrw
      #end
      if @wthdrwl.to_f.round(2) == 0
        puts "\n"*2+"You withdrew nothing."
        gets
        newtrans
      elsif @wthdrwl.to_f.round(2) > wd[:bal].to_f.round(2)
        puts "\n"*2+"Sorry, you don't have enough money to make this withdrawal.".center(92)+"\n"*2
        gets
        wthDrw
      else
        puts "\n"*2+"Prev. Bal = #{wd[:bal].to_f.round(2)} Php"+"\n"
        puts "Withdrawn = #{wd[:bal].to_f.round(2)} Php"+"\n"
        puts "Curr. Bal = #{wd[:bal].to_f.round(2)-@wthdrwl.to_f.round(2)} Php"+"\n"
        wd[:bal] -= @wthdrwl.to_f.round(2)
        gets
        newtrans
      end
    end
  end
  puts "\n"*2+'No account with that PIN.'.center(92)+"\n"*2
  gets
  askpin
end


def dpst
  system "cls"
  @clients.each do |dep|
    if @pin.strip.to_i == dep[:pin]
      puts "\n"*3+"DEPOSIT".center(92)+"\n"*5
      puts "Total Balance = #{dep[:bal].to_f.round(2)} Php".center(92)+"\n"*5
      puts 'How much would you like to deposit?'.center(92)+"\n"*5
      puts '(Type "cancel" to cancel this transaction.)'.center(92)+"\n"*2
      puts '(Type "end" to abort transaction.)'.center(92)+"\n"*2
      @dpst = gets
      xPrg(@dpst.to_s.strip)
      cancel(@dpst.to_s.strip)
      if @dpst.to_f.round(2) == 0
        puts "\n"*2+"You deposited nothing."
        gets
        newtrans
      else
        puts "\n"*2+"Prev. Bal = #{dep[:bal].to_f.round(2)} Php"+"\n"
        puts "Deposited = #{dep[:bal].to_f.round(2)} Php"+"\n"
        puts "Curr. Bal = #{dep[:bal].to_f.round(2)+@dpst.to_f.round(2)} Php"+"\n"
        dep[:bal] += @dpst.to_f.round(2)
        gets
        newtrans
      end
    end
  end
  puts "\n"*2+'No account with that PIN.'.center(92)+"\n"*2
  gets
  askpin
end


def cancel(x)
  if x.downcase == 'cancel'
    puts "\n"*2+'You have cancelled this transaction.'.center(92)+"\n"*2
    gets
    newtrans
  end
end


def inqBal
  system "cls"
  @clients.each do |ib|
    if @pin.strip.to_i == ib[:pin]
      puts "\n"*3+"INQUIRE BALANCE".center(92)+"\n"*5
      puts "Total Balance = #{ib[:bal].to_f.round(2)} Php".center(92)
      gets
      newtrans
      end
  end
  puts "\n"*3+'No account with that PIN.'.center(92)+"\n"*3
  gets
  askpin
end


def newtrans
  system 'cls'
  puts "\n"*15+'Would you like to make another transaction? (Type "Yes" or "No")'.center(92)+"\n"*3
  @choice = gets.chomp
  case @choice.downcase
  when  'yes'
    opt
  when 'no'
    xPrg('end')
  else
    puts 'Invalid input. Please type "Yes" or "No"'.center(92) +"\n"*3
    gets
    newtrans
  end
end


def xPrg(x)
  if x.downcase == 'end'
    system "cls"
    puts "\n"*15+"THANK YOU FOR BANKING WITH US.".center(92)
    gets
    intro
  end
end


def chngpin
  system "cls"
  puts "\n"*3+"CHANGE PIN".center(92)+"\n"*3
  puts '(Type "cancel" to cancel this transaction.)'.center(92)+"\n"*2
  puts '(Type "end" to abort transaction.)'.center(92)+"\n"*2
  puts "\n"*3+"Enter old pin:".center(92)+"\n"*3
  @oldpin=gets
  xPrg(@oldpin.to_s.strip)
  cancel(@oldpin.to_s.strip)
  @clients.each do |oldpinchk|
    if @oldpin.strip.to_i == oldpinchk[:pin]
      puts "\n"*3+'Enter new pin:'.center(92)+"\n"*3
      @newpin = gets
      xPrg(@newpin.to_s.strip)
      cancel(@newpin.to_s.strip)
      @clients.each do |newpinchk|
        if @newpin.strip.to_i == newpinchk[:pin]
          puts "\n"*3+'Unable to change PIN. PIN is currently in use.'.center(92)+"\n"*3
          gets
          chngpin
        end
      end
      oldpinchk[:pin] = @newpin.strip.to_i
      puts "\n"*3+'Your pin has been changed.'.center(92)+"\n"*3
      gets
      newtrans
    end
  end
  puts "\n"*3+'No account with that PIN.'.center(92)+"\n"*3
  gets
  chngpin
end


def fndtrns
  system "cls"
  puts "\n"*3+"FUND TRANSFER".center(92)+"\n"*3
  puts '(Type "cancel" to cancel this transaction.)'.center(92)+"\n"*2
  puts '(Type "end" to abort transaction.)'.center(92)+"\n"*2
  puts 'Enter Account Number:'
  @ftactnum = gets
  xPrg(@ftactnum.to_s.strip)
  cancel(@ftactnum.to_s.strip)
  @clients.each do |actnumchk|
    if @ftactnum.strip.to_i == actnumchk[:actnum]
      puts "\n"*3+'Enter amount to transfer:'.center(92)+"\n"*3
      @ftamt=gets
      xPrg(@ftamt.to_s.strip)
      cancel(@ftamt.to_s.strip)
      @clients.each do |ftchk|
        if @pin.strip.to_i == ftchk[:pin]
          if @ftamt.strip.to_f.round(2) <= ftchk[:bal]
            ftchk[:bal] -= @ftamt.strip.to_f.round(2)
          else
            puts "\n"*3+'Not enough balance.'.center(92)+"\n"*3
            gets
            fndtrns
          end
        end
      end
      actnumchk[:bal] += @ftamt.strip.to_f.round(2)
      puts "\n"*3+"You have tranferred #{@ftamt.strip.to_f.round(2)} Php.".center(92)+"\n"*3
      gets
      newtrans
    end
  end
end


intro
