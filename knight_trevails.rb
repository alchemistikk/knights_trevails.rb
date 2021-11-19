# Todo:
# Define where on the board the knight may move. Treat all possible moves the knight could make as children in a tree
# Given the knight's position and a target position, return the fewest number of
# moves it takes to get from the knight's position to the target position

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

class Knight
  attr_accessor :position

  def initialize
    @position = [nil, nil]
  end
end

board = Board.new
knight = Knight.new
