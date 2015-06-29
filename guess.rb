random = Random.rand(100)

puts "Guess a number between 1 and 100"

while guess = gets.chomp.to_i
	if guess > random
		puts "Your number is too high"
	elsif guess < random
		puts "your number is too low"
	else
		puts "Congrats! You answered corectly"
		break
	end
	
end