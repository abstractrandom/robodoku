# require_relative 'solver'
#
# filename = ARGV[0]
# puzzle = File.read(filename)
# solver = Solver.new
# solution = solver.solve(puzzle)
# puts solution
#
class GameBoard

  attr_reader :row

  def initialize
    @row = []
  end




end




# class Solver
#
#   attr_accessor :puzzle_array
#
#   def layout_puzzle(file)
#     File.foreach( 'file.txt' ) do |line|
#       @puzzle_array = line.split(/\n/)
#     end
#   # end
#
#   def solve_puzzle
#
#   end
#
# end
