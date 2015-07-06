require_relative "error"
class ComputerPlayer < Player
	attr_reader :name
	def initialize
		raise ArgumentError, "ComputerPlayer cannont be named" unless self.name.nil?
		@name = "HAL 9000"
	end
end