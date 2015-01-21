require 'pry'

class Solver

  attr_accessor :possibilities_array, :integer_array, :solved_spot

  def initialize
    @possibilities_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def read_board(file)
    # read the file
    line = reading the file and getting a line
    line_integer_maker(line)
  end

  def line_integer_maker(array_line)
    #add .chars
    @integer_array = array_line.chars.map { |i| i.to_i }
  end

  def spot_solver
    @possibilities_array - @integer_array
    #take result of line_integer_maker(@integer_array) and subtract it from @possibilities_array
  end
end
