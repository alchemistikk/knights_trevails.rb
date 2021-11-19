# Todo:
# Treat all possible moves the knight could make as children in a tree
# Given the knight's position and a target position, return the fewest number of
# moves it takes to get from the knight's position to the target position

# Example returns:

# knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
# knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
# knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]

class Board
  attr_accessor :board

  def initialize
    @base = Array.new(64, Array.new(2))
    @board = populate(@base)
  end

  def populate(board)
    index = 0
    8.times do |first|
      8.times do |second|
        board[index] = [first, second]
        index += 1
      end
    end
    board
  end
end

class Knight
  attr_accessor :position, :board

  def initialize
    @position = [nil, nil]
    @board = Board.new.board
  end

  # Need to remove elements that are impossible to move to
  # The greatest difference for values in both x and y coord is 2
  def possible_moves(pos)
    vertices = [-17, -15, -10, -6, 6, 10, 15, 17] # All possible moves
    possible_vertices = []
    pos_index = @board.index(pos)
    vertices.each do |vertex|
      temp = pos_index + vertex
      possible_vertices << pos_index + vertex if temp >= 0 && temp <= 64
    end
    possible_positions = []
    possible_vertices.each do |vertex|
      possible_positions << @board[vertex]
    end
    possible_positions.each do |place|
      2.times do |i|
        diff = pos[i] - place[i]
        possible_positions.delete(place) if diff > 2 || diff < -2
      end
    end
    possible_positions
  end
end
