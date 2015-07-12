require_relative "../Board"
require "byebug"
describe Board do
	let(:board) { Board.new }
	it "knows if its full" do
		expect(board.full?).to be false
	end
	
	it "knows who won" do 
		board.grid[0].each do |space|
			space.X!
		end
		expect(board.win).to be true
	end
end