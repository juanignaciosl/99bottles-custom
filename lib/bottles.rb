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
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
      "Take one down and pass it around, #{number - 1} #{container(number - 1)} of beer on the wall.\n"
    end
  end

   def song
     verses(99, 0)
   end

   def container(number)
     "bottle#{number > 1 ? 's' : ''}"
   end
end
