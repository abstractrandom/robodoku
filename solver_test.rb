require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require 'pry'               # => true
require './solver'          # ~> LoadError: cannot load such file -- ./solver

class SolverTest < Minitest::Test

  def setup
    @solver = Solver.new
  end

  def test_it_exists
    assert @solver
  end

  def test_there_is_a_puzzle_to_take_in
    puzzle_line = File.read('./puzzle_one_line_one').chomp
    assert_equal "8 6594317", puzzle_line
  end

  def test_it_turns_a_puzzle_line_into_an_integer_array
    array_line = "8 6594317"
    assert_equal [8, 0, 6, 5, 9, 4, 3, 1, 7], @solver.line_integer_maker(array_line)
    end

  def test_it_can_turn_the_string_array_into_an_integer_array
    array_line = ["8", " ", "6", "5", "9", "4", "3", "1", "7"]
  end

  def test_there_is_an_array_of_possibilities
    assert [1, 2, 3, 4, 5, 6, 7, 8, 9], @solver.possibilities_array
  end

  def test_line_solver_finds_missing_number
    @solver.integer_array = [8, 0, 6, 5, 9, 4, 3, 1, 7]
    @solver.possibilities_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    assert_equal [2], @solver.spot_solver
  end
end
