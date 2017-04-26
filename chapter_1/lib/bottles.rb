class Bottles
  def verse(number)
    if number > 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"\
      "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    elsif number > 1
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"\
      "Take one down and pass it around, #{number-1} bottle of beer on the wall.\n"
    elsif number > 0
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n"\
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n"\
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(first_verse, last_verse)
    return_string = ""
    current_verse = first_verse
    while current_verse >= last_verse do
      return_string += verse(current_verse)
      current_verse -= 1
      return_string += "\n" unless current_verse < last_verse
    end
    return_string
  end

  def song
    verses(99, 0)
  end
end
