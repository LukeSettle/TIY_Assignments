require "../Game"

RSpec.describe Game do
	let(:game) { Game.new} 
	describe "#initialize" do
		it "has a board" do
			game = Game.new
			expect(game.board.size).to eq 3
		end
	end
end