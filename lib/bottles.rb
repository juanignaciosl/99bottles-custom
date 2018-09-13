class Bottles
  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.for(number)

    "#{bottle_number.to_s.capitalize} of beer on the wall, #{bottle_number} of beer.\n" +
    "#{bottle_number.action}, #{bottle_number.successor} of beer on the wall.\n"
  end

   def song
     verses(99, 0)
   end
end

class BottleNumber
   attr_reader:number

   def self.for(number)
     case number
     when 0
       BottleNumber0
     when 1
       BottleNumber1
     when 6
       BottleNumber6
     else
       BottleNumber
     end.new(number)
   end

   def initialize(number)
     @number = number
   end

   def container
     "bottles"
   end

   def pronoun
     'one'
   end

   def quantity
     number.to_s
   end

   def action
     "Take #{pronoun} down and pass it around"
   end

   def successor
     BottleNumber.for(number - 1)
   end

   def to_s
     "#{quantity} #{container}"
   end
end

class BottleNumber0 < BottleNumber
  def quantity
    'no more'
  end

  def action
    "Go to the store and buy some more"
  end
  
  def successor
    BottleNumber.for(99)
  end
end

class BottleNumber1 < BottleNumber
   def container
     "bottle"
   end

   def pronoun
     'it'
   end
end

class BottleNumber6 < BottleNumber
  def container
    'six-pack'
  end

  def quantity
    1.to_s
  end
end
