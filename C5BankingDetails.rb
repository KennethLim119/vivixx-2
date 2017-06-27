class Account
  attr_accessor :name, :email, :actnum, :address, :contact, :balance
  def initialize(name, email, actnum, address, contact, balance)
    @name=name
    @email=email
    @actnum=actnum
    @address=address
    @contact=contact
    @balance=balance
  end


  def print_acct_details
    puts "\n"+'='*92+"\n"*2+'ACCOUNT DETAILS:'.center(92)+"\n"*2+'='*92+"\n"*2
    puts "Name: #{@name}"+"\n"*2
    puts "E-Mail: #{@email}"+"\n"*2
    puts "Account Number: #{@actnum}"+"\n"*2
    puts "Address: #{@address}"+"\n"*2
    puts "Contact Number: #{@contact}"+"\n"*2
    puts "Total Balance: #{@balance} Php"+"\n"*2
  end


end

@dmm=Account.new('DMonMac', 'dmacaso@yahoo.com', 4865312964, 'Baguio City', '(+63) 915 355 9288', 1000000)
@toby=Account.new('TobySig', 'sigerson@gmail.com', 6145329057, 'Manila City', '(+63) 915 355 9288', 5555555)


def header
  system "cls"
  puts "\n"+'='*92+"\n"*2+'ACCOUNT DETAILS:'.center(92)+"\n"*2+'='*92+"\n"*2
  chooseAcct
end

def chooseAcct
  puts 'dmm'
  puts 'toby'
  puts "\n"+'Choose account name:'
  @act=gets.strip.to_s
  case @act.downcase
  when 'dmm'
    system 'cls'
    @dmm.print_acct_details
    gets
    header
  when 'toby'
    system 'cls'
    @toby.print_acct_details
    gets
    header
  else
    puts 'Invalid input.'
    gets
    header
  end
end

header
