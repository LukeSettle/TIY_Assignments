require_relative "Move"
require_relative "Player"
require "byebug"
class Board
	attr_reader :board, :grid, :players
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
			row = self.grid[m].uniq == 1
			if row == 1 && row.X?
				return puts "X is the winner"
			elsif row == 1 && row.Y?
				return puts "Y is the winner"
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