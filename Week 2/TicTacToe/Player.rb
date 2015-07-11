class Player
	attr_reader :name, :move

	def initialize name = "Luke", move
		@name = name
		@move = Move.new move
	end

	def make_move(x, y)
		
	end
end