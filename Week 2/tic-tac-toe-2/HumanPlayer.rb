class HumanPlayer
	attr_reader :letter
	def initialize letter
		@letter = letter
	end

	def get_move
  		print "#{@letter}> "
  		input = gets.chomp
  		input = input.split
  		{
  		  row: input[0].to_i,
  		  column: input[1].to_i
  		}
	end

end