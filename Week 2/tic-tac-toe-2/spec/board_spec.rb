require_relative "../Board"
require "byebug"

	describe Board do
		it "should know when its over" do
			board = Board.new
			expect(board.game_over?).to be false
		end

		it "knows valid moves" do
			board = Board.new
			expect(board.valid_move? 5, 7).to be false
		end
	end
