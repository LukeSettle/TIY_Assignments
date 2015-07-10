require_relative "Move"
require "byebug"
class Board
	attr_reader :board, :grid
	def initialize 
		@grid = []
		3.times {@grid << [Move.new("empty"), Move.new("empty"), Move.new("empty")]}
	end
	def full?
		false
	end

	def display
		str = ""
		@grid.each do |row|
			row.each do |space|
				# byebug
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
end