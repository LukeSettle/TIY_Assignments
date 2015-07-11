require_relative "Move"
require_relative "Player"
require "byebug"
class Board
	attr_reader :board, :grid
	def initialize
		@players = [Player.new("player1", "X"), Player.new("player2", "Y")]
		@grid = []
		3.times {@grid << [Move.new("empty"), Move.new("empty"), Move.new("empty")]}
	end
	def full?
		@grid.each do |row|
			row.each do |space|
				return false if space.empty?
			end
		end
		true
	end

	def display
		str = ""
		@grid.each do |row|
			row.each do |space|
				if space.empty? 
					str += "_"
				elsif space.X?
					str += "X"
				else
					str += "Y"
				end
			end
			str += "\n"
		end	
		print str 
	end

	def win
		for m in 0..2 do 
			self.grid[m].each do |space|
				if space.X?
					return puts "X is the winner"
				elsif space.Y?
					return puts "Y is not the winner"
				end
			end
		end
	end

	def place_move x, y, move
		@players.each do |player|
			if player.move.type == "X"
				return  @grid[x][y].X!
			else
				return  @grid[x][y].Y!
			end
		end
	end
end