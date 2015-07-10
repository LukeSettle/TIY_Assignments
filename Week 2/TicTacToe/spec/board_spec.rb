require_relative "../Board"
describe Board do
	let(:board) { Board.new }
	it "knows if its full" do
		expect(board.full?).to be false
	end
end