require "pry"
class Ship
	attr_reader :size, :x, :y, :axis, :hits
	def initialize size, hits = []
		@size = size
		@hits = hits
		# @holes = []
		# self.each_position {|x, y| @holes << Hole.new(x, y)}
	end

	def length
		@size = size
	end

	def place x, y, axis
		return false if @x || @y
		@x = x
		@y = y
		@axis = axis
		true
	end

	def covers? a, b
		cover = false
		self.each_position do |x, y|
			cover = true if x == a && y == b
		end
		cover
	end

	def overlaps_with?(ship)
		overlap = false
		self.each_position do |x, y|
			overlap = true if ship.covers?(x, y)
		end
		overlap
	end

	def fire_at a, b
		if covers? a, b
			@hits << [a, b]
		end
	end

	def sunk?
		sank = false
		sank = true if @hits.length == self.length
		sank
	end

	def each_position
		x = @x
		y = @y

		@size.times do
			yield(x,y)
			if @axis
				x += 1
			else
				y += 1
			end
		end
	end
end
