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
 until board.full? || board.win
	board.display
	puts "What row do you want to play on player 1?"
	x = gets.chomp.to_i
	puts "What column would you like to play on player 1?"
	y = gets.chomp.to_i
	board.place_move x, y, board.players[0].move
	board.display

	puts "What row do you want to play on player 2?"
	x = gets.chomp.to_i
	puts "What column would you like to play on player 2?"
	y = gets.chomp.to_i
	board.place_move x, y, board.players[1].move
	board.display
end


