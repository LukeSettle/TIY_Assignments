require_relative "../Player"
require "byebug"
describe Player do
	it "can be initialized with an X" do
		playerX = Player.new "X"
		expect(playerX.move.type).to eq("X")
		playerY = Player.new "Y"
		expect(playerY.move.type).to eq("Y")
	end

	it "validates player moves" do 
		player = Player.new "X"
		player.get_move
		byebug
		expect(@x).to eq(@x)
	end

end