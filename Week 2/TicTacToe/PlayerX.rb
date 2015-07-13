require_relative "Player"
class PlayerX < Player
	attr_reader :move, :name
	def initialize
		@move = Move.new "X"
		@name = name
		Player.new @name, @move.type
	end
end