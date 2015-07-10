class Move
	attr_reader :type
	def initialize type
		@type = type
	end

	def empty!
		@type = "empty"
	end
	def empty?
		@type == "empty"
	end
	def X!
		@type = "X"
	end
	def X?
		@type == "X"
	end
	def Y!
		@type = "Y"
	end
	def Y?
		@type == "Y"
	end
end