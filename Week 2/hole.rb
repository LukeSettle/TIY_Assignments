class Hole
	attr_reader :x, :y

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

	def to_s
		if @state == :empty
			"O"
		else
			"X"
		end
	end
end