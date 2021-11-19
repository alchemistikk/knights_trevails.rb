# Todo:
# Create a knight
# Define where on the board the knight may move
# Given the knight's location and a target location, return the fewest number of
# moves it takes to get from the knight's location to the target location

# Example returns:

# knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
# knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
# knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]

class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8) { Array.new(8) { |i| i } }
  end
end

board = Board.new
