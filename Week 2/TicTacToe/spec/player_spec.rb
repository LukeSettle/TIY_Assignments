require_relative "../PlayerX"
describe Player do
	let(:player) { PlayerX.new }
	it "can be initialized with an X" do
		expect(player.move.type).to eq("X")
		playerY = Player.new "Y"
		expect(playerY.move.type).to eq("Y")
	end
end