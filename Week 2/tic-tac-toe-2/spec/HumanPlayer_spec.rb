require_relative "../HumanPlayer"

	describe HumanPlayer do 
		let (:human) {HumanPlayer.new "Y"}
		it "is initialized with a letter" do
			expect(human.letter).to eq("Y")
		end

		it "player gives move" do
			expect(human.get_move).not_to equal(nil)
		end

		
	end