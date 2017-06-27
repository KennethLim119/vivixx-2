class InvalidCardError < StandardError
end

class Card
  def initialize(cardNum)
    @cardNum = cardNum
  end

  def cardNum
    @cardNum
  end
end

def validate(n)
  card = n.split("")
  newArr = []
  if card.count.even?
    card.each_with_index do |x,i|
      x = x.to_i
      if i.even?
        x = x*2
        if x > 9
          x-=9
        end
        newArr << x
      else
        newArr << x
      end
    end
  end
  if card.count.odd?
    card.each_with_index do |x,i|
      x = x.to_i
      if i.odd?
        x = x*2
        if x > 9
          x-=9
        end
        newArr << x
      else
        newArr << x
      end
    end
  end
  $newArr = newArr
  newArr = newArr.join("")
  sum = $newArr.inject(0){|sum,x| sum + x }
  $sum = sum
  raise InvalidCardError, "Lol, your card number is invalid" if !(($sum.to_f % 10.0) == 0)
  return (($sum.to_f % 10.0) == 0)
end
