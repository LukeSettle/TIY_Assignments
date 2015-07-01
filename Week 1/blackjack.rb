require "pry"
	

	def game
		hard = {	
				5 => dealer = {2 => "Hit",3 => "Hit", 4 =>"Hit", 5 =>"Hit", 6 =>"Hit", 7 =>"Hit", 8 =>"Hit", 9 =>"Hit", 10 =>"Hit", :A => "Hit"},
				6 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Hit", 6 =>"Hit", 7 => "Hit", 8 =>	"Hit", 9 => "Hit", 10 =>"Hit", :A =>"Hit"	},
				7 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Hit", 6 =>"Hit", 7 => "Hit", 8 =>	"Hit", 9 => "Hit", 10 =>"Hit", :A =>"Hit"	},
				8 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Hit", 9 => "Hit", 10 =>"Hit", "A" =>"Hit"	},
				9 => dealer = {2 => "Double if possible, otherwise Hit",3 => "Double if possible, otherwise Hit", 4 =>"Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Hit", 8 => "Hit", 9 => "Hit", 10 =>"Hit", "A" =>"Hit"},
				10 => dealer = {2 => "Double if possible, otherwise Hit",3 => "Double if possible, otherwise Hit", 4 =>"Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Double if possible, otherwise Hit", 9 =>	"Double if possible, otherwise Hit", 10 => "Hit", "A" =>"Hit"},
				11 => dealer = {2 => "Double if possible, otherwise Hit",3 => "Double if possible, otherwise Hit", 4 =>"Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Double if possible, otherwise Hit", 9 =>	"Double if possible, otherwise Hit", 10 => "Double if possible, otherwise Hit", "A" => "Hit"},
				12 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", "A" => "Hit"},
				13 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", "A" => "Hit"},
				14 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", "A" => "Hit"},
				15 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", "A" => "Hit"},
				16 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", "A" => "Hit"},
				17 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"},
				18 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"},
				19 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"},
				20 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"},
				21 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"}
			}

			pair = {
				[2, 2] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Hit", 9 => "Hit", 10 => "Hit", "A" => "Hit"},
				[3, 3] => dealer = {2 => "Split", 3 => "Split",	4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "H", 10 => "H", "A" => "H",},
				[4, 4]	=> dealer = {2 => "H", 3 => "H", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "H", 8 => "H", 9 => "H", 10 => "H", "A" => "H"},
				[5, 5] => dealer = {2 => "Double if possible, otherwise Hit", 3 => "Double if possible, otherwise Hit", 4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 => "Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Double if possible, otherwise Hit", 9 => "Double if possible, otherwise Hit", 10 => "H", "A" => "H",},
				[6, 6] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "H", 9 => "H", 10 => "H", "A" => "H"},
				[7, 7] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "H", 10 => "Stand", "A" => "H"},
				[8, 8] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "Split", 10 => "Split", "A" => "Split"},
				[9, 9] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Stand", 8 => "Split", 9 => "Split", 10 => "Stand", "A" => "Stand"},
				[10, 10] => dealer = {2 => "Stand", 3 => "Stand", 4 => "Stand", 5 => "Stand", 6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"},
				["A", "A"] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "Split", 10 => "Split", "A" => "Split"}, 
			}


			soft = {
				13 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit",	5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "H", 8 => "H",	9 => "H", 10 => "H", "A" => "H"},
				14 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit",	5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "H", 8 => "H",	9 => "H", 10 => "H", "A" => "H"},
				15 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit",	5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "H", 8 => "H",	9 => "H", 10 => "H", "A" => "H"},
				16 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit",	5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "H", 8 => "H",	9 => "H", 10 => "H", "A" => "H"},
				17 => dealer = {2 => "Double if possible, otherwise Hit", 3 => "Double if possible, otherwise Hit", 4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "Hit", 8 => "Hit",	9 => "Hit", 10 => "Hit", "A" => "Hit"},
				18 => dealer = {2 => "Stand", 3 => "Double if possible, otherwise Hit", 4 => "Double if possible, otherwise Stand", 5 => "Double if possible, otherwise Stand",	6 => "Double if possible, otherwise Stand",	7 => "Stand", 8 => "Stand",	9 => "Hit", 10 => "Hit", "A" => "Stand"},
				19 => dealer = {2 => "Stand", 3 => "Stand",	4 => "Stand", 5 => "Stand",	6 => "Double if possible, otherwise Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"},
				20 => dealer = {2 => "Stand", 3 => "Stand",	4 => "Stand", 5 => "Stand",	6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"},
				21 => dealer = {2 => "Stand", 3 => "Stand",	4 => "Stand", 5 => "Stand",	6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", "A" => "Stand"}
				}





		puts "What card do you have?"
		card = gets.chomp
		puts "What is your second card?"
		card2 = gets.chomp
		puts "What is the dealers card?"
		dealer_card = gets.chomp

	# 	if (card != "A" && card2 != "A") && card != card2
	# 		final = card + card2
	# 		last = hard[final]
	# 		print last[dealer_card]
	# 	elsif card == card2
	# 		final << card
	# 		final << card2
	# 		double = pair[final]
	# 		print double[dealer_card]
	# 	elsif card
			
	# 		print "error"
	# 	end
	# end

	final = []

	if card == "A" || card2 == "A" || dealer_card == "A"
		if card == "A" && card2 == "A"
			final << card
			final << card2
			last = pair[final]
			if dealer_card == "A"
				puts last[dealer_card]
			else
			puts last[dealer_card.to_i]
			end
		else
			final << card + card2
			last = soft[final]
			if dealer_card == "A"
			puts last[dealer_card]
			else
				puts last[dealer_card.to_i]
			end
		end
	else
		final = card.to_i + card2.to_i  
		last = hard[final]
		print last[dealer_card.to_i]
	end
end
	game


