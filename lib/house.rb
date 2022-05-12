class House
  def line(line_number)
    case line_number
    when 1
      "This is the house that Jack built.\n"
    when 2
      "This is the malt that lay in the house that Jack built.\n"
    when 3
      "This is the rat that ate the malt that lay in the house that Jack built.\n"
    when 4
      "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    when 5
      "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    else
      "This is #{horse_and_hound(line_number)}#{farmer(line_number)}#{rooster(line_number)}#{priest(line_number)}#{tattered_and_torn(line_number)}#{maiden(line_number)}#{cow(line_number)}the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    end
  end

  def recite
    (1..12).map {|line_number| line(line_number)}.join("\n")
  end

  def horse_and_hound(line_number)
    if line_number >= 12
      "the horse and the hound and the horn that belonged to "
    else
      ""
    end
  end

  def farmer(line_number)
    if line_number >= 11
      "the farmer sowing his corn that kept "
    else
      ""
    end
  end

  def rooster(line_number)
    if line_number >= 10
      "the rooster that crowed in the morn that woke "
    else
      ""
    end
  end

  def priest(line_number)
    if line_number >= 9
      "the priest all shaven and shorn that married "
    else
      ""
    end
  end

  def tattered_and_torn(line_number)
    if line_number >= 8
      "the man all tattered and torn that kissed "
    else
      ""
    end
  end

  def maiden(line_number)
    if line_number >= 7
      "the maiden all forlorn that milked "
    else
      ""
    end
  end

  def cow(line_number)
    "the cow with the crumpled horn that tossed "
  end
end