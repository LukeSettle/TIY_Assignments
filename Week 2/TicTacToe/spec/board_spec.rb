require_relative "../Board"
describe Board do
	let(:board) { Board.new }
	it "knows if its full" do
		expect(board.full?).to be false
	end
	
	it "knows who won" do 
		board.grid[0].each do |space|
			space.X!
		end
		expect(board.win).to eq "X is the winner"
	end
end