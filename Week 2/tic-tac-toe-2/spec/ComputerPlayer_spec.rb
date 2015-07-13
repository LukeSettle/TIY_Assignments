require_relative "../ComputerPlayer"
require "byebug"

	describe ComputerPlayer do 
		let (:computer) {ComputerPlayer.new "X"}
		it "give integers" do 
			expect(computer.get_move.class).to be(Hash)
			input = computer.get_move
			expect(input[:row].class).to be(Fixnum)
			expect(input[:column].class).to be(Fixnum)
		end

		it "has a letter" do 
			expect(computer.letter).to eq("X")
		end
	end