require "pry"
class Ship
	attr_reader :size, :x, :y, :axis, :cords
		def initialize size
		@size = size
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

	def covers? a, b, cords = []
	   	x = @x
	  	y = @y
	  	@a = a
	  	@b = b
	  	@cords = cords << [@x, @y]
	  	if x == @a and y == @b
	  		return true
	  	else
	    	(@size - 1).times do
	    		if @axis
	    	   		x += 1
	    	   		@cords << [x, y]
	    	   		
	    	 	else
	    	   		y += 1
	    	   		@cords << [x, y]
	    	 	end

	    	 	return true if x == @a and y == @b
	    	end
	   		false
	   	end
	end

	def overlaps_with?(ship)
		self.place(@x, @y, @axis)
		self.covers?(@a, @b)
		ship.place(@x, @y, @axis)
		ship.covers?(@a, @b)

		self_cords = self.cords
		ship_cords = ship.cords
		both = ship_cords & self_cords
		return true unless both.empty?
		false
	end
end
