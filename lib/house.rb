class House
  attr_accessor :order_of_subjects, :order_of_verbs
  attr_reader :subject_phrases, :verb_phrases, :first_seed, :second_seed, :prefix

  def initialize
    raise "Must subclass House" if self.class == House

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

    @order_of_subjects = (0..subject_phrases.length-1).to_a
    @order_of_verbs = (0..verb_phrases.length-1).to_a
    @first_seed = Random.new
    @second_seed = Random.new
  end

  def one_phrase(phrase_number)
    "#{subject_phrases[order_of_subjects[phrase_number]]} that #{verb_phrases[order_of_verbs[phrase_number]]} "
  end

  def line(line_number)
    raise "Must assign value to prefix instance variable" if (prefix == nil)
    "#{prefix} #{appended_phrases(line_number)}the house that Jack built.\n"
  end

  def recite
    (1..12).map {|line_number| line(line_number)}.join("\n")
  end

  def appended_phrases(line_number)
    (order_of_subjects.length-line_number+1..order_of_subjects.length-1).map {|phrase_number| one_phrase(phrase_number)}.join("")
  end

  def fully_randomize(seed_one = first_seed, seed_two = second_seed)
    self.order_of_subjects = (0..subject_phrases.length-1).to_a.shuffle(random: seed_one)
    self.order_of_verbs = (0..verb_phrases.length-1).to_a.shuffle(random: seed_two)
    self
  end

  def randomize(seed = first_seed)
    randomized_order = (0..subject_phrases.length-1).to_a.shuffle(random: seed)
    self.order_of_subjects = randomized_order
    self.order_of_verbs = randomized_order
    self
  end

  def unrandomize
    self.order_of_subjects = (0..subject_phrases.length-1).to_a
    self.order_of_verbs = (0..verb_phrases.length-1).to_a
    self
  end
end

class PirateHouse < House

  def initialize
    super()
    @prefix="Thar be"
  end

end

class RegularHouse < House

  def initialize
    super()
    @prefix="This is"
  end

end

class NewHouse < House
  
  def initialize
    super()
  end
  
end