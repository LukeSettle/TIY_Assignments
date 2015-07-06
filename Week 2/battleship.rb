require_relative "Player"
require_relative "HumanPlayer"
require_relative "ComputerPlayer"

Player.new "human"
ComputerPlayer.new
human = HumanPlayer.new "luke2"
#main file
puts human.name