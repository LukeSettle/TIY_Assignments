class ComputerPlayer
	attr_reader :letter
	def initialize letter
		@letter = letter
	end

	def get_move
  		print "#{player}> "
  		if player.computer?
  		  #do automated moves
  		else
  		input = gets.chomp
  		input = input.split
  		{
  		  row: input[0].to_i,
  		  column: input[1].to_i
  		}
  		end
	end

end