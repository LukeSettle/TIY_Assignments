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

		# if @axis == true
		# 	if left > self.length || right != @y || left == 1
		# 		false
		# 	else
		# 		true
		# 	end	
		# elsif @axis == false
		# 	if right > self.length || left != @x || right == 1
		# 		false
		# 	else
		# 		true
		# 	end	
end