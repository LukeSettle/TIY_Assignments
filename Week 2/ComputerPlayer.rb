class ComputerPlayer < Player
	def initialize
		raise ArgumentError, "ComputerPlayer cannont be named" unless self.nil?
	end
end