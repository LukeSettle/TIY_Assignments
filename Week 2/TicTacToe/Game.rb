require_relative "Board"

class Game
	attr_reader :game, :board
	def initialize
		@game = Game.new
		@board = Board.new
	end
end