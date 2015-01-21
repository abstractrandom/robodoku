require 'minitest/autorun'
require 'minitest/pride'
require './unsolved_spot'
require 'pry'

class UnsolvedSpotTest < Minitest::Test

  def setup
    @unsolved_spot = UnsolvedSpot.new
  end

  def test_it_exists
    assert @unsolved_spot
  end

  def test_it_finds_a_spot
    @unsolved_spot.spot = 
  end
end
