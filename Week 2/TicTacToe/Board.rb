require_relative "Move"
require "byebug"
class Board
	attr_reader :board, :grid
	def initialize 
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
		self.grid[0].each do |space|
			if space.X?
				return "X is the winner"
			else
				return "X is not the winner"
			end
		end
	end

end