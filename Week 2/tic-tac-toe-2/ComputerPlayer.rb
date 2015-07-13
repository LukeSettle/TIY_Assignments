require "byebug"
class ComputerPlayer
	attr_reader :letter
	def initialize letter
		@letter = letter
	end

	def get_move
  		input = rand(0..2), rand(0..2)
  		{
  		  row: input[0].to_i,
  		  column: input[1].to_i
  		}
	end

end