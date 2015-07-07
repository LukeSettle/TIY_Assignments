require "pry"
class Ship
	attr_reader :size, :x, :y, :axis
	def initialize size
		@size = size
		@holes = []
		self.each_position {|x, y| @holes << Hole.new(x,y)}
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
		covers? a, b
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

	# def fire_at(c, d)
	# 	shot = [c, d]
	# 	return false unless
	# end
end
