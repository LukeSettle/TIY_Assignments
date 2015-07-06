class HumanPlayer < Player
	attr_reader  :name
	def initialize name = "Dave"
		@name = name
	end
end