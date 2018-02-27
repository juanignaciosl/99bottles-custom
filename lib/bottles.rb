class Bottles
  def verse(bottles)
    "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n" +
    "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.\n"
  end
end
