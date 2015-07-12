require_relative "Board"
require "byebug"
class Game
	attr_reader :board
	def initialize
		@board = Board.new
	end

	def play
		@board.display
	end

	def turn
		current_player = @board.players[0]
		if current_player == @board.players[0]
			current_player = @board.players[1]
		end
	end
end






