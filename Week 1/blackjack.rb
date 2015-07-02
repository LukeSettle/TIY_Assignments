require "pry"
	

		hard = {	
				5 => dealer = {2 => "Hit",3 => "Hit", 4 =>"Hit", 5 =>"Hit", 6 =>"Hit", 7 =>"Hit", 8 =>"Hit", 9 =>"Hit", 10 =>"Hit", 11 => "Hit"},
				6 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Hit", 6 =>"Hit", 7 => "Hit", 8 =>	"Hit", 9 => "Hit", 10 =>"Hit", 11 =>"Hit"	},
				7 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Hit", 6 =>"Hit", 7 => "Hit", 8 =>	"Hit", 9 => "Hit", 10 =>"Hit", 11 =>"Hit"	},
				8 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Hit", 9 => "Hit", 10 =>"Hit", 11 =>"Hit"	},
				9 => dealer = {2 => "Double if possible, otherwise Hit",3 => "Double if possible, otherwise Hit", 4 =>"Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Hit", 8 => "Hit", 9 => "Hit", 10 =>"Hit", 11 =>"Hit"},
				10 => dealer = {2 => "Double if possible, otherwise Hit",3 => "Double if possible, otherwise Hit", 4 =>"Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Double if possible, otherwise Hit", 9 =>	"Double if possible, otherwise Hit", 10 => "Hit", 11 =>"Hit"},
				11 => dealer = {2 => "Double if possible, otherwise Hit",3 => "Double if possible, otherwise Hit", 4 =>"Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 =>"Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Double if possible, otherwise Hit", 9 =>	"Double if possible, otherwise Hit", 10 => "Double if possible, otherwise Hit", 11 => "Hit"},
				12 => dealer = {2 => "Hit", 3 => "Hit", 4 =>"Hit", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				13 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				14 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				15 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				16 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Hit", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				17 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"},
				18 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"},
				19 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"},
				20 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"},
				21 => dealer = {2 => "Stand", 3 => "Stand", 4 =>"Stand", 5 => "Stand", 6 =>"Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"}
			}

			pair = {
				[2, 2] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Hit", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				[3, 3] => dealer = {2 => "Split", 3 => "Split",	4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "H", 10 => "H", 11 => "Hit",},
				[4, 4]	=> dealer = {2 => "H", 3 => "H", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Hit", 8 => "H", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				[5, 5] => dealer = {2 => "Double if possible, otherwise Hit", 3 => "Double if possible, otherwise Hit", 4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit", 6 => "Double if possible, otherwise Hit", 7 => "Double if possible, otherwise Hit", 8 => "Double if possible, otherwise Hit", 9 => "Double if possible, otherwise Hit", 10 => "Hit", 11 => "Hit",},
				[6, 6] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Hit", 9 => "Hit", 10 => "Hit", 11 => "Hit"},
				[7, 7] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "H", 10 => "Stand", 11 => "Hit"},
				[8, 8] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "Split", 10 => "Split", 11 => "Split"},
				[9, 9] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Stand", 8 => "Split", 9 => "Split", 10 => "Stand", 11 => "Stand"},
				[10, 10] => dealer = {2 => "Stand", 3 => "Stand", 4 => "Stand", 5 => "Stand", 6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"},
				[11, 11] => dealer = {2 => "Split", 3 => "Split", 4 => "Split", 5 => "Split", 6 => "Split", 7 => "Split", 8 => "Split", 9 => "Split", 10 => "Split", 11 => "Split"}, 
			}


			soft = {
				13 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "Hit", 8 => "Hit",	9 => "Hit", 10 => "Hit", 11 => "Hit"},
				14 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "Hit", 8 => "Hit",	9 => "Hit", 10 => "Hit", 11 => "Hit"},
				15 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "Hit", 8 => "Hit",	9 => "Hit", 10 => "Hit", 11 => "Hit"},
				16 => dealer = {2 => "Hit", 3 => "Hit",	4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "Hit", 8 => "Hit",	9 => "Hit", 10 => "Hit", 11 => "Hit"},
				17 => dealer = {2 => "Double if possible, otherwise Hit", 3 => "Double if possible, otherwise Hit", 4 => "Double if possible, otherwise Hit", 5 => "Double if possible, otherwise Hit",	6 => "Double if possible, otherwise Hit",	7 => "Hit", 8 => "Hit",	9 => "Hit", 10 => "Hit", 11 => "Hit"},
				18 => dealer = {2 => "Stand", 3 => "Double if possible, otherwise Hit", 4 => "Double if possible, otherwise Stand", 5 => "Double if possible, otherwise Stand",	6 => "Double if possible, otherwise Stand",	7 => "Stand", 8 => "Stand",	9 => "Hit", 10 => "Hit", 11 => "Stand"},
				19 => dealer = {2 => "Stand", 3 => "Stand",	4 => "Stand", 5 => "Stand",	6 => "Double if possible, otherwise Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"},
				20 => dealer = {2 => "Stand", 3 => "Stand",	4 => "Stand", 5 => "Stand",	6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"},
				21 => dealer = {2 => "Stand", 3 => "Stand",	4 => "Stand", 5 => "Stand",	6 => "Stand", 7 => "Stand", 8 => "Stand", 9 => "Stand", 10 => "Stand", 11 => "Stand"}
				}

		

		final = []

def check (c)
	if c == "a"
		return c = 11
	elsif c == "k" || c == "q" || c == "j"
		c = 10
	else
		c = c.to_i
	end
end

		puts "What card do you have?"
		card = gets.chomp
		puts "What is your second card?"
		card2 = gets.chomp
		puts "What is the dealers card?"
		dealer_card = gets.chomp

first = check(card)
second = check(card2)
dealer = check(dealer_card)
both = first + second

if first == second
	final << first 
	final << second
	last = pair[final]
	puts last[dealer]
elsif first == 11 || second == 11
	final = both
	last = soft[final]
	puts last[dealer]
else
	final = both
	last = hard[final]
	puts last[dealer]
end





