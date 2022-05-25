class House
  @@phrases = ["the horse and the hound and the horn that belonged to ", 
    "the farmer sowing his corn that kept ", 
    "the rooster that crowed in the morn that woke ",
    "the priest all shaven and shorn that married ",
    "the man all tattered and torn that kissed ",
    "the maiden all forlorn that milked ",
    "the cow with the crumpled horn that tossed ",
    "the dog that worried ",
    "the cat that killed ",
    "the rat that ate ",
    "the malt that lay in "]

  def line(line_number, prefix="This is")
    "#{prefix} #{appended_phrases(line_number)}the house that Jack built.\n"
  end

  def recite
    (1..12).map {|line_number| line(line_number)}.join("\n")
  end

  def appended_phrases(line_number)
    ((12-line_number)..(10)).map {|phrase_number| @@phrases[phrase_number]}.join("")
  end
end

class PirateHouse
  attr_reader :prefix

  def initialize
    @prefix="Thar is"
  end

  def line(line_number, prefix="This is")
    "#{prefix} #{appended_phrases(line_number)}the house that Jack built.\n"
  end
end