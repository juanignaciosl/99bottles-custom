class Bottles
  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n" +
      "#{action(number)}, #{quantity(99)} #{container(number - 1)} of beer on the wall.\n"
    else
      "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.\n" +
      "#{action(number)}, #{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n"
    end
  end

   def song
     verses(99, 0)
   end

   private

   def container(number)
     "bottle#{number != 1 ? 's' : ''}"
   end

   def pronoun(number)
     number == 1 ? 'it' : 'one'
   end

   def quantity(number)
     number == 0 ? "no more" : number.to_s
   end

   def action(number)
     if number == 0
       "Go to the store and buy some more"
     else
       "Take #{pronoun(number)} down and pass it around"
     end
   end
end
