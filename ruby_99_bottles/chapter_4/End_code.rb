class Bottles def song
  verses(99,0) end
  def verses(upper, lower)
  upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end
  def verse(number)
  "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " + "#{quantity(number)} #{container(number)} of beer.\n" +
  "#{action(number)}, " +
  "#{quantity(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end
  def quantity(number) if number == 0
  "no more"
  else
  number.to_s end
  end
  def container(number) if number == 1
  "bottle"
  else
  "bottles"
  end
  Page 100
  4.9. Depending on Abstractions
  31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56
  end
  def action(number) if number == 0
        "Go to the store and buy some more"
  else
  "Take #{pronoun(number)} down and pass it around" end
  end
  def pronoun(number) if number == 1
  "it"
  else
  "one"
  end end
  def successor(number) if number == 0
  99
  else
  number - 1 end
  end end
