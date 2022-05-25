gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class PirateHouseTest < Minitest::Test

  def test_first_pirate_line
    expected = "Thar is the house that Jack built.\n"
    assert_equal expected, PirateHouse.new.line(1)
  end

end