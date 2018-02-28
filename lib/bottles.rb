class Bottles
  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "#{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.\n" +
      "Take #{pronoun(number)} down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.\n" +
      "Take #{pronoun(number)} down and pass it around, #{number - 1} #{container(number - 1)} of beer on the wall.\n"
    end
  end

   def song
     verses(99, 0)
   end

   private

   def container(number)
     "bottle#{number > 1 ? 's' : ''}"
   end

   def pronoun(number)
     if number == 1
       'it'
     else
       'one'
     end
   end
end
