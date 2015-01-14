require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './robodoku'

class RobodokuTest < Minitest::Test

  def setup
    @board = GameBoard.new
  end

  def test_it_exists
    assert board
  end



  # def test_it_has_one_spot
  #   board = GameBoard.new
  #   board.spot
  #   assert_equal 1, board.spot
  # end
  #
  # def test_it_makes_one_row
  #   board = GameBoard.new
  #   board.row
  #   assert_equal [], board.row
  # end
end
