class House
  def line(line_number)
    case line_number
    when 1
      "This is the house that Jack built.\n"
    else
      "This is #{horse_and_hound(line_number)}#{farmer(line_number)}#{rooster(line_number)}#{priest(line_number)}#{tattered_and_torn(line_number)}#{maiden(line_number)}#{cow(line_number)}#{dog(line_number)}#{cat(line_number)}#{rat(line_number)}the malt that lay in the house that Jack built.\n"
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
    if line_number >= 6
      "the cow with the crumpled horn that tossed "
    else
      ""
    end
  end

  def dog(line_number)
    if line_number >= 5
      "the dog that worried "
    else
      ""
    end
  end

  def cat(line_number)
    if line_number >= 4
      "the cat that killed "
    else
      ""
    end
  end

  def rat(line_number)
    if line_number >= 3
      "the rat that ate "
    else
      ""
    end
  end

  def malt(line_number)
  end
end