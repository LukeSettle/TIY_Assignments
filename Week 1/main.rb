require_relative "currency"
require"pry"

puts "what currency do you have?"
code = gets.chomp.upcase
puts "How much do you have?"
amount = gets.chomp.to_i
puts "What currency do you want to conver to?"
wanted = gets.chomp.upcase

rates = { 
	"US" => { "USD" => 1.0, "EUR" => 0.90, "KRW" => 1122.05, "JPY" => 123.16},

	"EUR" => {"USD" => 1.11, "EUR" => 1.0,"KRW" => 1244.52,"JPY" => 136.45},
	
	"KRW" => {"USD" => 0.00089, "EUR" => 0.00080,"KRW" => 1.0,"JPY" => 0.11},
	
	"JPY" => {"USD" => 0.0081, "EUR" => 0.0081, "KRW" => 9.12, "JPY" => 1.0}
	}



	final = amount * rates[code][wanted]

	puts final.round(3)
		