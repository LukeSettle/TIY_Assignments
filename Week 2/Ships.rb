require "pry"

class Ship
	attr_reader :size, :x, :y, :axis

	def initialize size
		@size = size
	end

	def length
		@size = size
	end

	def place x, y, axis
		@x = x
		@y = y
		@axis = axis
	end

	def covers? a, b
	   	x = @x
	  	y = @y
	  	if x == a and y == b
	  		return true
	  	else
	    	(@size - 1).times do
	    		if @axis
	    	   		x += 1
	    	 	else
	    	   		y += 1
	    	 	end
	    	 	return true if x == a and y == b
	    	end
	   		false
	   	end
	 end
end