gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class RegularHouseTest < Minitest::Test

  def test_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(1)
  end

  def test_line_2
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(2)
  end

  def test_line_3
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(3)
  end

  def test_line_4
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(4)
  end

  def test_line_5
    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(5)
  end

  def test_line_6
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(6)
  end

  def test_line_7
    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(7)
  end

  def test_line_8
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(8)
  end

  def test_line_9
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(9)
  end

  def test_line_10
    expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(10)
  end

  def test_line_11
    expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(11)
  end

  def test_line_12
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.line(12)
  end

  def test_all_the_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, RegularHouse.new.recite
  end

  def test_randomized_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.randomize(Random.new(1)).line(1)
  end

  def test_randomized_line_2
    expected = "This is the maiden all forlorn that milked the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.randomize(Random.new(1)).line(2)
  end

  def test_unrandomized_line_2
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.randomize.unrandomize.line(2)
  end

  def test_unrandomized_line_3
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.randomize.unrandomize.line(3)
  end

  def test_fully_randomized_line_2
    expected = "This is the cat that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.fully_randomize(Random.new(2), Random.new(3)).line(2)
  end

  def test_fully_randomized_line_3
    expected = "This is the malt that killed the cat that lay in the house that Jack built.\n"
    assert_equal expected, RegularHouse.new.fully_randomize(Random.new(2), Random.new(3)).line(3)
  end

end

class PirateHouseTest < Minitest::Test

  def test_first_pirate_line
    expected = "Thar be the house that Jack built.\n"
    assert_equal expected, PirateHouse.new.line(1)
  end

  def test_second_pirate_line
    expected = "Thar be the malt that lay in the house that Jack built.\n"
    assert_equal expected, PirateHouse.new.line(2)
  end

  def test_fully_randomized_pirate_line_2
    expected = "Thar be the cat that lay in the house that Jack built.\n"
    assert_equal expected, PirateHouse.new.fully_randomize(Random.new(2), Random.new(3)).line(2)
  end

  def test_fully_randomized_pirate_line_3
    expected = "Thar be the malt that killed the cat that lay in the house that Jack built.\n"
    assert_equal expected, PirateHouse.new.fully_randomize(Random.new(2), Random.new(3)).line(3)
  end

end

class NewHouseTest < Minitest::Test

  def test_first_new_line
    assert_raises(StandardError) {NewHouse.new.line(1)}
  end
end