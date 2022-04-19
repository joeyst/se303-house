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
    end
    "This is the house that Jack built.\n"
  end
end