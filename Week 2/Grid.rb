require_relative "Ships"

class Grid
	attr_reader :Grid

	def initialize
		@Grid = Grid
	end

	def has_ship_on?(x, y)
		false
	end

	def display
	puts %Q{    1   2   3   4   5   6   7   8   9   10
  -----------------------------------------
A |   |   |   |   |   |   |   |   |   |   |
B |   |   |   |   |   |   |   |   |   |   |
C |   |   |   |   |   |   |   |   |   |   |
D |   |   |   |   |   |   |   |   |   |   |
E |   |   |   |   |   |   |   |   |   |   |
F |   |   |   |   |   |   |   |   |   |   |
G |   |   |   |   |   |   |   |   |   |   |
H |   |   |   |   |   |   |   |   |   |   |
I |   |   |   |   |   |   |   |   |   |   |
J |   |   |   |   |   |   |   |   |   |   |
  -----------------------------------------
}
	end

	def place_ship (ship, x, y, axis)
		@x = x
		@y = y
		@axis = axis
		return false if @x || @y
		@x = x
		@y = y
		@axis = axis
		true
	end
end