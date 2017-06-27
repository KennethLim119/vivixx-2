class Activity
  attr_accessor :name, :date, :time
def initialize(name, date, time)
  $actname = name
  $actdate = date
  $acttime = time
end

def askName
  system 'cls'
  puts "\n"*5+'What is your name?'.center(90)
  print ' '.center(45)
  $name = gets
  if $name.strip.empty?
    puts "\n"*2+"Please type a visible name.".center(90)
    gets
    askName
  else
  puts "\n"*2+"Your name is #{$name}".center(90)
  gets
  end
end

def askAct
  system 'cls'

  puts
  print "\n"*2+"Type activity: "
  $act = gets
  if $act.strip.empty?
    puts "\n"*2+"Please type a visible activity.".center(90)
    gets
    askAct
  else
    puts "\n"*2+"You have #{$act} to your activities".center(90)
    gets
    showAct
  end
end

def showAct
  puts "#{$name.upcase}'S ACTIVITIES". center(90)


end
