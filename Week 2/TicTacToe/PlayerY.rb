require_relative "Player"
class PlayerY < Player
	attr_reader
	def initialize name = "y", move = "Y"
		@move = Move.new "Y"
		@name = name
		Player.new @name, @move.type
	end
end