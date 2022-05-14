class House
  @@phrases = ["the horse and the hound and the horn that belonged to ", 
    "the farmer sowing his corn that kept ", 
    "the rooster that crowed in the morn that woke ",
    "the priest all shaven and shorn that married "]

  def line(line_number)
      "This is #{appended_phrases(line_number)}#{priest(line_number)}#{tattered_and_torn(line_number)}#{maiden(line_number)}#{cow(line_number)}#{dog(line_number)}#{cat(line_number)}#{rat(line_number)}#{malt(line_number)}the house that Jack built.\n"
  end

  def recite
    (1..12).map {|line_number| line(line_number)}.join("\n")
  end

  def appended_phrases(line_number)
    ((12-line_number)..(2)).map {|phrase_number| @@phrases[phrase_number]}.join("")
  end

  def horse_and_hound(line_number)
    if line_number >= 12
      @@phrases[0]
    else
      ""
    end
  end

  def farmer(line_number)
    if line_number >= 11
      @@phrases[1]
    else
      ""
    end
  end

  def rooster(line_number)
    if line_number >= 10
      @@phrases[2]
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
    if line_number >= 2
      "the malt that lay in "
    else
      ""
    end
  end
end