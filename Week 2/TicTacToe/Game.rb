require_relative "Board"
require "byebug"
# class Game
# 	def initialize
# 		@board = Board.new
# 	end

# 	def play
# 		@board.display
# 	end
# end

board = Board.new
board.place_move 1, 1, @player1
board.place_move 1, 0, @player1
board.place_move 1, 2, @player1
board.display


