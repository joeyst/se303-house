class House
  @@phrases = ["the horse and the hound and the horn that belonged to ", 
    "the farmer sowing his corn that kept ", 
    "the rooster that crowed in the morn that woke ",
    "the priest all shaven and shorn that married ",
    "the man all tattered and torn that kissed ",
    "the maiden all forlorn that milked ",
    "the cow with the crumpled horn that tossed ",
    "the dog that worried ",
    "the cat that killed "]

  def line(line_number)
      "This is #{appended_phrases(line_number)}#{rat(line_number)}#{malt(line_number)}the house that Jack built.\n"
  end

  def recite
    (1..12).map {|line_number| line(line_number)}.join("\n")
  end

  def appended_phrases(line_number)
    ((12-line_number)..(8)).map {|phrase_number| @@phrases[phrase_number]}.join("")
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