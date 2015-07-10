require_relative "Board"
# class Game
# 	def initialize
# 		@board = Board.new
# 	end

# 	def play
# 		@board.display
# 	end
# end

board = Board.new
board.display

board.grid[0].each do |space|
	space.X!
	byebug
end