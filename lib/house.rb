class House
  def line(line_number)
    if (line_number == 2)
      return "This is the malt that lay in the house that Jack built.\n"
    elsif (line_number == 3)
      return "This is the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 4)
      return "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 5)
      return "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 6)
      return "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 7)
      return "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 8)
      return "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 9)
      return "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 10)
      return "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 11)
      return "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif (line_number == 12)
      return "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    end
    "This is the house that Jack built.\n"
  end

  def recite
    line(1) + "\n" + line(2) + "\n" + line(3) + "\n" + line(4) + "\n" + line(5) + "\n" + line(6) + "\n" + line(7) + "\n" + line(8) + "\n" + line(9) + "\n" + line(10) + "\n" + line(11) + "\n" + line(12)
  end
end