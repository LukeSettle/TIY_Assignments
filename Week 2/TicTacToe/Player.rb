require_relative "Board"
class Player
	attr_reader :name, :move, :x

	def initialize name = "Luke", move
		@name = name
		@move = Move.new move
	end

	def get_move
		puts "Where would you like to play?"
		@x = gets.chomp.to_i
		until @x <= 9 || @x >= 1
			puts "that is an invalid move"
			@x = gets.chomp.to_i
		end
		@x
	end
end