# "The new country of Vivixx has decided to hold an election!
# They will be choosing their first ever president.
# Can you help them, with what you have learnt,
# to help in the voting process?"

#Mika for President!

#Reggie for the WIN!

#Kenneth...

#Trevor,,,,,

#4 candidates... 20 voters

#Process/Methods/functions
# - cast vote
# - results

#Classes
# - voters
# - candidate

#voter1 = Voter1,new({})
#voter1.vote









def reset
@candidates = ['Mika', 'Reggie', 'Kenneth', 'Trevor']
@votes = [m=0, r=0, k=0, t=0]
@canname = ''
@vote =''
@v=0
@tie = []
end

def hi
  system "cls"
  puts '*'*93 + "\n"
  puts ('#'*93 +"\n")*2 + (' '*93 +"\n")+('Vivixx Elections 2017'.prepend(' '*5).concat(' '*5).center(93,'#')+"\n")+(' '*93 +"\n")+('#'*93 +"\n")*2

  puts "\n"+'Welcome to Vivixx Elections 2017. '+ "\n"
  puts "\n"+'Here are the candidates:' + "\n"
  ctr=0
  @candidates.each do
    ctr +=1
    puts "#{ctr}. #{@candidates[ctr-1]}"
  end
  vote
end

def vote
  while @v < 20 do
    puts "\n"+"\n"+'Type the name of the candidate you want to vote for:'+"\n"+"(Type 'End' to end collection of votes.)"+"\n"
    @vote = gets.chomp.strip
    case @vote.downcase
      when 'mika'
        @votes[0]+=1
        @v+=1
        puts "You voted for Mika." +"\n Thank you for voting."
        gets
        hi
        break #so it won't go through the rest of the loop
      when 'reggie'
        @votes[1]+=1
        @v+=1
        puts "You voted for Reggie."+"\n Thank you for voting."
        gets
        hi
        break
      when 'kenneth'
        @votes[2]+=1
        @v+=1
        puts "You voted for Kenneth."+"\n Thank you for voting."
        gets
        hi
        break
       when 'trevor'
        @votes[3]+=1
        @v+=1
        puts "You voted for Trevor."+"\n Thank you for voting."
        gets
        hi
        break
       when 'end'
        votetally
        break
       else
        puts 'That is not one of the candidates. Pls try again.'
        gets
        vote
    end
  end
votetally
end


def votetally
  puts '*'*93+"\n"*2
  puts "\n"*2 + 'Here are the results of the election:' +"\n"*2
  ctr=0
  @candidates.each do
    ctr +=1
    puts "#{@candidates[ctr-1]} = #{@votes[ctr-1]} (#{(@votes[ctr-1].to_f/@v)*100}%)"
  end
  counttie
end

def counttie
  if @v==0
    puts"No one voted. Nobody wins. Let's vote again."
    gets
    system "cls"
    hi
  else
    ctr=0
      @votes.each do
        ctr +=1
        if @votes[ctr-1] == @votes.max
          @tie.push(@candidates[ctr-1])
        end
      end
  end
    resultsfin
end

def resultsfin
  if @tie.length > 1
    puts "\n"*2 + "It's a tie between #{@tie[0..@tie.length-2]} and #{@tie[-1]}. Let's repeat this 'til someone wins."+"\n"*2
    gets
    system "cls"
    reset
    hi
  else
      puts "\n"*2+'*'*93+"\n"*2
      puts "The winner is #{@candidates[@votes.index(@votes.max)]} with #{@votes.max} vote(s)."+"\n"*2
      puts 'That is the end of the elections. Thanks to everyone who voted!'+"\n"*2
      exit
  end
end

reset
hi
