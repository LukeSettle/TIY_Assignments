require_relative "../Board"
describe Board do
	let(:board) { Board.new }
	it "is empty at start" do
		expect(board.full?).to be false
	end
end