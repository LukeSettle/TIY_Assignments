class Hole
	attr_reader :x, :y, :shot

	def initialize x, y
		@x = x
		@y = y
		@state = :empty
	end

	def hit!
		@state = :hit
	end

	def hit?
		@state == :hit
	end

	def empty?
		@state == :empty
	end
	def shot!
		@state = :shot
	end
	def shot?
		@state == :shot
	end

	def to_s
		if @state == :empty
			"O"
		elsif @state == :shot
			"+"
		else
			"X"
		end
	end
end