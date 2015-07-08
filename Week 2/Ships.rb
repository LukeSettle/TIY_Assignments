require './hole'
class Ship
	attr_reader :length, :holes
	def initialize(length)
		@length = length
		@holes = []
	end

	def place x, y, axis
		return false unless @holes.empty?
		@length.times do
			@holes << Hole.new(x,y)
			if axis
				x += 1
			else
				y += 1
			end
		end
		true
	end

	def covers? a, b
		@holes.find { |hole| hole.x == a && hole.y == b}
	end

	def overlaps_with? ship
		@holes.find { |hole| ship.covers? hole.x, hole.y }
	end

	def fire_at a, b
		hole = covers? a, b
		return false unless hole
		hole.hit!
	end

	def sunk?
		hit_holes = @holes.select { |hole| hole.hit? }
		hit_holes.size == @length
	end
end