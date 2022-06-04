class House
  attr_accessor :order
  attr_reader :phrases

  def initialize
    @phrases = ["the horse and the hound and the horn that belonged to ", 
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

    @subject_phrases = ["the horse and the hound and the horn",
      "the farmer sowing his corn",
      "the rooster that crowed in the morn",
      "the priest all shaven and shorn",
      "the man all tattered and torn",
      "the maiden all forlorn",
      "the cow with the crumpled horn",
      "the dog",
      "the cat",
      "the rat",
      "the malt"]

    @verb_phrases = ["belonged to",
      "kept",
      "woke",
      "married",
      "kissed",
      "milked",
      "tossed",
      "worried",
      "killed",
      "ate",
      "lay in"]

    # random seed used to consistently shuffle for testing
    @order = (0..phrases.length-1).to_a
  end

  def one_phrase(phrase_number)
    "#{@subject_phrases[phrase_number-1]} that #{verb_phrases[phrase_number-1]}"
  end

  def line(line_number)
    raise "Must assign value to prefix instance variable" if (prefix == nil)
    "#{prefix} #{appended_phrases(line_number)}the house that Jack built.\n"
  end

  def recite
    (1..12).map {|line_number| line(line_number)}.join("\n")
  end

  def appended_phrases(line_number)
    (order[order.length+1-line_number..order.length-1]).map {|phrase_number| phrases[phrase_number]}.join("")
  end

  def random_order_phrases(line_number)
    (order.take(line_number)).map {|phrase_number| phrases[phrase_number]}.join("")
  end

  def randomize
    self.order = (0..phrases.length-1).to_a.shuffle(random: Random.new(1))
    self
  end

  def unrandomize
    self.order = (0..phrases.length-1).to_a
    self
  end
end

class PirateHouse < House
  attr_reader :prefix

  def initialize
    super()
    @prefix="Thar be"
  end
end

class RegularHouse < House
  attr_reader :prefix

  def initialize
    super()
    @prefix="This is"
  end
end

class NewHouse < House
  attr_reader :prefix
  def initialize
    super()
  end
  
end